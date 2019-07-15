.class public Lorg/xutils/DbManager$DaoConfig;
.super Ljava/lang/Object;
.source "DbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/DbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaoConfig"
.end annotation


# instance fields
.field private allowTransaction:Z

.field private dbDir:Ljava/io/File;

.field private dbName:Ljava/lang/String;

.field private dbOpenListener:Lorg/xutils/DbManager$DbOpenListener;

.field private dbUpgradeListener:Lorg/xutils/DbManager$DbUpgradeListener;

.field private dbVersion:I

.field private tableCreateListener:Lorg/xutils/DbManager$TableCreateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-string v0, "xUtils.db"

    iput-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    .line 165
    iput v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbVersion:I

    .line 166
    iput-boolean v1, p0, Lorg/xutils/DbManager$DaoConfig;->allowTransaction:Z

    .line 172
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-ne p0, p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return v1

    .line 242
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 244
    check-cast v0, Lorg/xutils/DbManager$DaoConfig;

    .line 246
    .local v0, "daoConfig":Lorg/xutils/DbManager$DaoConfig;
    iget-object v3, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    iget-object v4, v0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 247
    :cond_4
    iget-object v3, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    iget-object v2, v0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getDbDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDbOpenListener()Lorg/xutils/DbManager$DbOpenListener;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbOpenListener:Lorg/xutils/DbManager$DbOpenListener;

    return-object v0
.end method

.method public getDbUpgradeListener()Lorg/xutils/DbManager$DbUpgradeListener;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbUpgradeListener:Lorg/xutils/DbManager$DbUpgradeListener;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/xutils/DbManager$DaoConfig;->dbVersion:I

    return v0
.end method

.method public getTableCreateListener()Lorg/xutils/DbManager$TableCreateListener;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->tableCreateListener:Lorg/xutils/DbManager$TableCreateListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 252
    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 253
    .local v0, "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 254
    return v0

    .line 253
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAllowTransaction()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/xutils/DbManager$DaoConfig;->allowTransaction:Z

    return v0
.end method

.method public setAllowTransaction(Z)Lorg/xutils/DbManager$DaoConfig;
    .locals 0
    .param p1, "allowTransaction"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lorg/xutils/DbManager$DaoConfig;->allowTransaction:Z

    .line 193
    return-object p0
.end method

.method public setDbDir(Ljava/io/File;)Lorg/xutils/DbManager$DaoConfig;
    .locals 0
    .param p1, "dbDir"    # Ljava/io/File;

    .prologue
    .line 175
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    .line 176
    return-object p0
.end method

.method public setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;
    .locals 1
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    .line 183
    :cond_0
    return-object p0
.end method

.method public setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;
    .locals 0
    .param p1, "dbOpenListener"    # Lorg/xutils/DbManager$DbOpenListener;

    .prologue
    .line 197
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbOpenListener:Lorg/xutils/DbManager$DbOpenListener;

    .line 198
    return-object p0
.end method

.method public setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;
    .locals 0
    .param p1, "dbUpgradeListener"    # Lorg/xutils/DbManager$DbUpgradeListener;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbUpgradeListener:Lorg/xutils/DbManager$DbUpgradeListener;

    .line 203
    return-object p0
.end method

.method public setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;
    .locals 0
    .param p1, "dbVersion"    # I

    .prologue
    .line 187
    iput p1, p0, Lorg/xutils/DbManager$DaoConfig;->dbVersion:I

    .line 188
    return-object p0
.end method

.method public setTableCreateListener(Lorg/xutils/DbManager$TableCreateListener;)Lorg/xutils/DbManager$DaoConfig;
    .locals 0
    .param p1, "tableCreateListener"    # Lorg/xutils/DbManager$TableCreateListener;

    .prologue
    .line 207
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->tableCreateListener:Lorg/xutils/DbManager$TableCreateListener;

    .line 208
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbDir:Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
