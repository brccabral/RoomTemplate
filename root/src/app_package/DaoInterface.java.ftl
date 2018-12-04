package ${packageName};

import android.arch.lifecycle.LiveData;
import android.arch.persistence.room.Dao;
import android.arch.persistence.room.Delete;
import android.arch.persistence.room.Insert;
import android.arch.persistence.room.Query;
import android.arch.persistence.room.OnConflictStrategy;

import java.util.List;

import ${packageName}.${entityClass};

@Dao
public interface ${daoInterface} {

    // query all
    // replace "table" with your table name
    @Query("SELECT * FROM table")
    LiveData<List<${entityClass}>> getAll();

    // insert query
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    void insert(${entityClass}) entity);

    // delete query
    @Delete
    void delete(${entityClass}) entity);
}