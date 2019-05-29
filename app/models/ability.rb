class Ability
  include CanCan::Ability

  def initialize(user)
    if user.try(:admin?)
      can :access, :rails_admin #管理画面（rails_admin）へのアクセス
      can :manage, :all #全てのモデルに対しての全ての操作（新規保存、編集、削除など）
    end
  end
end
