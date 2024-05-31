class PostPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def index?
    true # Allow all users to view the index of posts
  end

  def show?
    true # Allow all users to view individual posts
  end

  def create?
    user.present? # Allow only logged-in users to create posts
  end

  def new?
    create? # Alias for create
  end

  def update?
    user.present? && (user == post.user || user.role?('admin')) # Allow only the owner or admin to update it
  end

  def edit?
    update? # Alias for update
  end

  def destroy?
    user.present? && (user == post.user || user.role?('admin')) # Allow only the owner or admin to delete it
  end

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if user.role?('admin')
        scope.all
      else
        scope.where(user: user)
      end
    end
  end
end

