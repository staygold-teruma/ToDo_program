class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    puts "【追加】#{task.info}"
  end

  def info
    puts "*=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=*"
    @tasks.each do |task|
      puts "#{task.info}"
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
      puts "【削除】#{specified_task.info}"
      @tasks.delete(specified_task)
    end
  end
end