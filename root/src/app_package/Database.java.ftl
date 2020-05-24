package ${packageName};

import android.content.Context;

import androidx.room.Database;
import androidx.room.Room;
import androidx.room.RoomDatabase;

@Database(entities = {${entityClass}.class}, version = 1)
public abstract class ${databaseClass} extends RoomDatabase {

    private static volatile ${databaseClass} INSTANCE;

    public static ${databaseClass} getDatabase(final Context context) {
        if (INSTANCE == null) {
            synchronized (${databaseClass}.class) {
                if (INSTANCE == null) {
                    INSTANCE = Room.databaseBuilder(context.getApplicationContext(),
                            ${databaseClass}.class,"your_database_name") //TODO replace "your_database_name" with your database name 
                            .build();
                }
            }
        }
        return INSTANCE;
    }

    public abstract ${daoInterface} myDAO();
}