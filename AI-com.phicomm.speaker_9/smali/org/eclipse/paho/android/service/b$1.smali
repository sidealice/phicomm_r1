.class Lorg/eclipse/paho/android/service/b$1;
.super Ljava/lang/Object;
.source "DatabaseMessageStore.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/b;->a(Ljava/lang/String;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/eclipse/paho/android/service/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/eclipse/paho/android/service/b;

.field private c:Landroid/database/Cursor;

.field private d:Z

.field private final e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/b;Ljava/lang/String;)V
    .locals 8

    .line 290
    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    iput-object p2, p0, Lorg/eclipse/paho/android/service/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 293
    new-array p1, p1, [Ljava/lang/String;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/b$1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->e:[Ljava/lang/String;

    .line 299
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    iget-object p2, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    invoke-static {p2}, Lorg/eclipse/paho/android/service/b;->a(Lorg/eclipse/paho/android/service/b;)Lorg/eclipse/paho/android/service/b$b;

    move-result-object p2

    invoke-virtual {p2}, Lorg/eclipse/paho/android/service/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/eclipse/paho/android/service/b;->a(Lorg/eclipse/paho/android/service/b;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    .line 302
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 303
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/b;->b(Lorg/eclipse/paho/android/service/b;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "MqttArrivedMessageTable"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "mtimestamp ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    invoke-static {p1}, Lorg/eclipse/paho/android/service/b;->b(Lorg/eclipse/paho/android/service/b;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "MqttArrivedMessageTable"

    const/4 v2, 0x0

    const-string v3, "clientHandle=?"

    iget-object v4, p0, Lorg/eclipse/paho/android/service/b$1;->e:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "mtimestamp ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    .line 319
    :goto_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/b$1;->d:Z

    return-void
.end method


# virtual methods
.method public a()Lorg/eclipse/paho/android/service/c$a;
    .locals 9

    .line 332
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v2, "messageId"

    .line 333
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 332
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v2, "clientHandle"

    .line 335
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 334
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 336
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v2, "destinationName"

    .line 337
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 336
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 338
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v2, "payload"

    .line 339
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 338
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 340
    iget-object v1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v3, "qos"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 341
    iget-object v2, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v7, "retained"

    .line 342
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 341
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 343
    iget-object v3, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    iget-object v7, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v8, "duplicate"

    .line 344
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 343
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 347
    new-instance v7, Lorg/eclipse/paho/android/service/b$c;

    iget-object v8, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    invoke-direct {v7, v8, v0}, Lorg/eclipse/paho/android/service/b$c;-><init>(Lorg/eclipse/paho/android/service/b;[B)V

    .line 348
    invoke-virtual {v7, v1}, Lorg/eclipse/paho/android/service/b$c;->b(I)V

    .line 349
    invoke-virtual {v7, v2}, Lorg/eclipse/paho/android/service/b$c;->b(Z)V

    .line 350
    invoke-virtual {v7, v3}, Lorg/eclipse/paho/android/service/b$c;->a(Z)V

    .line 353
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/b$1;->d:Z

    .line 354
    new-instance v0, Lorg/eclipse/paho/android/service/b$a;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/android/service/b$a;-><init>(Lorg/eclipse/paho/android/service/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 368
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/b$1;->d:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/b$1;->d:Z

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/b$1;->a()Lorg/eclipse/paho/android/service/c$a;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
