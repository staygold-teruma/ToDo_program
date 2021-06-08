class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "【追加】[No.#{task.id}] #{task.title}:#{task.content}"
  end

  def info
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    @tasks.each do |task|
      task.info
    end
    puts "*=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=*"
  end

  # キーワードを引数で渡す場合は(id:)と記述
  def delete(id:)
    # 配列.find { |変数| 条件 }
    specified_task = @tasks.find {|task| task.id == id}
    if specified_task == nil
      puts "【！】該当idのタスクはありません"
    else
      @tasks.delete(specified_task)
      puts "[No.#{specified_task.id}] #{specified_task.title}を削除しました"
    end
  end
end