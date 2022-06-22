# File: lib/secret_diary.rb

class SecretDiary
  def initialize(diary) # diary is an instance of Diary
    # ...
    @diary = diary
    @lock = true
  end

  def read
    # Raises the error "Go away!" if the diary is locked
    # Returns the diary's contents if the diary is unlocked
    # The diary starts off locked
    if @lock
      fail "Go away!"
    else
      return @diary.read
    end 
  end

  def lock
    @lock = true
    # Locks the diary
    # Returns nothing
  end

  def unlock
    @lock = false
    # Unlocks the diary
    # Returns nothing
  end
end