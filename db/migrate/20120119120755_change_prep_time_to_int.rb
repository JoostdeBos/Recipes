class ChangePrepTimeToInt < ActiveRecord::Migration
	#De bereidingstijd kan beter opgeslagen worden als een integer, het time format maakt er een tijdstip van
  def up
  	change_column :recipes, :preperation_time, :int
  end

  def down
  	change_column :recipes, :preperation_time, :time
  end
end
