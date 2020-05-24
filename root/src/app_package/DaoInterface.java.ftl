package ${packageName};

import androidx.lifecycle.LiveData;
import androidx.room.Dao;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;

import java.util.List;

@Dao
public interface ${daoInterface} {

    // query all
    // TODO replace "table" with your table name
    @Query("SELECT * FROM table")
    LiveData<List<${entityClass}>> getAll();

    // insert query
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    void insert(${entityClass} entity);

    // delete query
    @Delete
    void delete(${entityClass} entity);
}