.class public final Lorg/litepal/parser/LitePalAttr;
.super Ljava/lang/Object;
.source "LitePalAttr.java"


# static fields
.field private static litePalAttr:Lorg/litepal/parser/LitePalAttr;


# instance fields
.field private cases:Ljava/lang/String;

.field private classNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dbName:Ljava/lang/String;

.field private version:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static getInstance()Lorg/litepal/parser/LitePalAttr;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    if-nez v0, :cond_1

    .line 77
    const-class v1, Lorg/litepal/parser/LitePalAttr;

    monitor-enter v1

    .line 78
    :try_start_0
    sget-object v0, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lorg/litepal/parser/LitePalAttr;

    invoke-direct {v0}, Lorg/litepal/parser/LitePalAttr;-><init>()V

    sput-object v0, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    sget-object v0, Lorg/litepal/parser/LitePalAttr;->litePalAttr:Lorg/litepal/parser/LitePalAttr;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method addClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-virtual {p0}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public checkSelfValid()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 147
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    .line 149
    const-string v1, "dbname is empty or not defined in litepal.xml file"

    .line 148
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".db"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    .line 154
    :cond_1
    iget v0, p0, Lorg/litepal/parser/LitePalAttr;->version:I

    if-ge v0, v2, :cond_2

    .line 155
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    .line 156
    const-string v1, "the version of database can not be less than 1"

    .line 155
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_2
    iget v0, p0, Lorg/litepal/parser/LitePalAttr;->version:I

    invoke-static {}, Lorg/litepal/util/SharedUtil;->getLastVersion()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 159
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    .line 160
    const-string v1, "the version in litepal.xml is earlier than the current version"

    .line 159
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_3
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    const-string v0, "lower"

    iput-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    .line 172
    :cond_4
    return v2

    .line 165
    :cond_5
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    const-string v1, "upper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 166
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    const-string v1, "lower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    const-string v1, "keep"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 168
    new-instance v0, Lorg/litepal/exceptions/InvalidAttributesException;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    const-string v2, " is an invalid value for <cases></cases>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-direct {v0, v1}, Lorg/litepal/exceptions/InvalidAttributesException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCases()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    return-object v0
.end method

.method public getClassNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    .line 110
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    const-string v1, "org.litepal.model.Table_Schema"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    return-object v0

    .line 111
    :cond_1
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->classNames:Ljava/util/List;

    const-string v1, "org.litepal.model.Table_Schema"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDbName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lorg/litepal/parser/LitePalAttr;->version:I

    return v0
.end method

.method setCases(Ljava/lang/String;)V
    .locals 0
    .param p1, "cases"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/litepal/parser/LitePalAttr;->cases:Ljava/lang/String;

    .line 133
    return-void
.end method

.method setDbName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lorg/litepal/parser/LitePalAttr;->dbName:Ljava/lang/String;

    .line 100
    return-void
.end method

.method setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 91
    iput p1, p0, Lorg/litepal/parser/LitePalAttr;->version:I

    .line 92
    return-void
.end method
