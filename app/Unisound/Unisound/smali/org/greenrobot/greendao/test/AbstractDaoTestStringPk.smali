.class public abstract Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;
.super Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;
.source "AbstractDaoTestStringPk.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lorg/greenrobot/greendao/AbstractDao",
        "<TT;",
        "Ljava/lang/String;",
        ">;T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk",
        "<TD;TT;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk<TD;TT;>;"
    .local p1, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<TD;>;"
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/test/AbstractDaoTestSinglePk;-><init>(Ljava/lang/Class;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected bridge synthetic createRandomPk()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk<TD;TT;>;"
    invoke-virtual {p0}, Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;->createRandomPk()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected createRandomPk()Ljava/lang/String;
    .locals 6

    .prologue
    .line 39
    .local p0, "this":Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;, "Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk<TD;TT;>;"
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;->random:Ljava/util/Random;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 40
    .local v3, "len":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 42
    iget-object v4, p0, Lorg/greenrobot/greendao/test/AbstractDaoTestStringPk;->random:Ljava/util/Random;

    const/16 v5, 0x19

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x61

    int-to-char v1, v4

    .line 43
    .local v1, "c":C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v1    # "c":C
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
