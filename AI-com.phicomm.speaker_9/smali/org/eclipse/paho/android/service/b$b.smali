.class Lorg/eclipse/paho/android/service/b$b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseMessageStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Lorg/eclipse/paho/android/service/h;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/h;Landroid/content/Context;)V
    .locals 3

    const-string v0, "mqttAndroidService.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 78
    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 69
    iput-object v1, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/h;

    .line 79
    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/h;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const-string v0, "CREATE TABLE MqttArrivedMessageTable(messageId TEXT PRIMARY KEY, clientHandle TEXT, destinationName TEXT, payload BLOB, qos INTEGER, retained TEXT, duplicate TEXT, mtimestamp INTEGER);"

    .line 99
    iget-object v1, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/h;

    const-string v2, "MQTTDatabaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/eclipse/paho/android/service/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/h;

    const-string v0, "MQTTDatabaseHelper"

    const-string v1, "created the table"

    invoke-interface {p1, v0, v1}, Lorg/eclipse/paho/android/service/h;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 105
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/h;

    const-string v1, "MQTTDatabaseHelper"

    const-string v2, "onCreate"

    invoke-interface {v0, v1, v2, p1}, Lorg/eclipse/paho/android/service/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 106
    throw p1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 123
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/h;

    const-string p3, "MQTTDatabaseHelper"

    const-string v0, "onUpgrade"

    invoke-interface {p2, p3, v0}, Lorg/eclipse/paho/android/service/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p2, "DROP TABLE IF EXISTS MqttArrivedMessageTable"

    .line 125
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/b$b;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 131
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/h;

    const-string p2, "MQTTDatabaseHelper"

    const-string p3, "onUpgrade complete"

    invoke-interface {p1, p2, p3}, Lorg/eclipse/paho/android/service/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    .line 127
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b$b;->a:Lorg/eclipse/paho/android/service/h;

    const-string p3, "MQTTDatabaseHelper"

    const-string v0, "onUpgrade"

    invoke-interface {p2, p3, v0, p1}, Lorg/eclipse/paho/android/service/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 128
    throw p1
.end method
