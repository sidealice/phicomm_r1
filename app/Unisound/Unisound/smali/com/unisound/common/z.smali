.class final Lcom/unisound/common/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unisound/common/z;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v0, 0x0

    invoke-static {}, Lcom/unisound/common/y;->b()Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lcom/unisound/common/y;->a(Z)Z

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/unisound/common/z;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    array-length v1, v12

    if-lez v1, :cond_3

    move v10, v0

    :goto_0
    array-length v0, v12

    if-ge v10, v0, :cond_3

    invoke-static {}, Lcom/unisound/common/y;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, v12, v10

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "imei"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "sessionID"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "timeStamp"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "packageName"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "status"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v0, "errString"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "javaSDKLog"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "cSDKLog"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/unisound/common/x;

    invoke-direct/range {v0 .. v9}, Lcom/unisound/common/x;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/unisound/common/w;

    invoke-direct {v1}, Lcom/unisound/common/w;-><init>()V

    invoke-virtual {v1, v0}, Lcom/unisound/common/w;->a(Lcom/unisound/common/x;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unisound/common/y;->a(I)I

    aget-object v0, v12, v10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/unisound/common/y;->a(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/unisound/common/y;->d()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postLogError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/unisound/common/y;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " times"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unisound/common/y;->a(Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :cond_3
    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void
.end method
