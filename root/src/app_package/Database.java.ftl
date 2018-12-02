package ${packageName};

import android.arch.persistence.room.Database;
import android.arch.persistence.room.Room;
import android.arch.persistence.room.RoomDatabase;
import android.content.Context;

import ${packageName}.${entityClass};

@Database(entities = {${entityClass}.class}, version = 1)
public abstract class ${databaseClass} extends RoomDatabase {

    private static volatile ${databaseClass} INSTANCE;

    public static ${databaseClass} getDatabase(final Context context) {
        if (INSTANCE == null) {
            synchronized (${databaseClass}.class) {
                if (INSTANCE == null) {
                    INSTANCE = Room.databaseBuilder(context.getApplicationContext(),
                            ${databaseClass}.class,"your_database_name")
                            .build();
                }
            }
        }
        return INSTANCE;
    }

    public abstract ${daoInterface} myDAO();
}