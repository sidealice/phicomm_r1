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
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Z

.field private e:Lorg/xutils/DbManager$DbUpgradeListener;

.field private f:Lorg/xutils/DbManager$TableCreateListener;

.field private g:Lorg/xutils/DbManager$DbOpenListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "xUtils.db"

    .line 164
    iput-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 165
    iput v0, p0, Lorg/xutils/DbManager$DaoConfig;->c:I

    .line 166
    iput-boolean v0, p0, Lorg/xutils/DbManager$DaoConfig;->d:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 242
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 244
    :cond_1
    check-cast p1, Lorg/xutils/DbManager$DaoConfig;

    .line 246
    iget-object v2, p0, Lorg/xutils/DbManager$DaoConfig;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/xutils/DbManager$DaoConfig;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 247
    :cond_2
    iget-object v2, p0, Lorg/xutils/DbManager$DaoConfig;->a:Ljava/io/File;

    if-nez v2, :cond_4

    iget-object p1, p1, Lorg/xutils/DbManager$DaoConfig;->a:Ljava/io/File;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->a:Ljava/io/File;

    iget-object p1, p1, Lorg/xutils/DbManager$DaoConfig;->a:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method public getDbDir()Ljava/io/File;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->a:Ljava/io/File;

    return-object v0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDbOpenListener()Lorg/xutils/DbManager$DbOpenListener;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->g:Lorg/xutils/DbManager$DbOpenListener;

    return-object v0
.end method

.method public getDbUpgradeListener()Lorg/xutils/DbManager$DbUpgradeListener;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->e:Lorg/xutils/DbManager$DbUpgradeListener;

    return-object v0
.end method

.method public getDbVersion()I
    .locals 1

    .line 220
    iget v0, p0, Lorg/xutils/DbManager$DaoConfig;->c:I

    return v0
.end method

.method public getTableCreateListener()Lorg/xutils/DbManager$TableCreateListener;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->f:Lorg/xutils/DbManager$TableCreateListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 252
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    .line 253
    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->a:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xutils/DbManager$DaoConfig;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public isAllowTransaction()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lorg/xutils/DbManager$DaoConfig;->d:Z

    return v0
.end method

.method public setAllowTransaction(Z)Lorg/xutils/DbManager$DaoConfig;
    .locals 0

    .line 192
    iput-boolean p1, p0, Lorg/xutils/DbManager$DaoConfig;->d:Z

    return-object p0
.end method

.method public setDbDir(Ljava/io/File;)Lorg/xutils/DbManager$DaoConfig;
    .locals 0

    .line 175
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->a:Ljava/io/File;

    return-object p0
.end method

.method public setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;
    .locals 1

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->b:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;
    .locals 0

    .line 197
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->g:Lorg/xutils/DbManager$DbOpenListener;

    return-object p0
.end method

.method public setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;
    .locals 0

    .line 202
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->e:Lorg/xutils/DbManager$DbUpgradeListener;

    return-object p0
.end method

.method public setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;
    .locals 0

    .line 187
    iput p1, p0, Lorg/xutils/DbManager$DaoConfig;->c:I

    return-object p0
.end method

.method public setTableCreateListener(Lorg/xutils/DbManager$TableCreateListener;)Lorg/xutils/DbManager$DaoConfig;
    .locals 0

    .line 207
    iput-object p1, p0, Lorg/xutils/DbManager$DaoConfig;->f:Lorg/xutils/DbManager$TableCreateListener;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->a:Ljava/io/File;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/DbManager$DaoConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
