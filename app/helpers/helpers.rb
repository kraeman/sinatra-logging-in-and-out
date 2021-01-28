class Helpers
    def self.current_user(hash)
        @id = hash[:user_id]
        return User.find(@id)
    end

    def self.is_logged_in?(hash)
        @id = hash[:user_id]
        @user = User.find(@id)
        if @user
            true
        else
            false
        end
    end
end