.class public final Lorg/xutils/db/table/TableEntity;
.super Ljava/lang/Object;
.source "TableEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lorg/xutils/DbManager;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Lorg/xutils/db/table/ColumnEntity;

.field private e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile g:Z

.field private final h:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/xutils/DbManager;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    .line 46
    iput-object p2, p0, Lorg/xutils/db/table/TableEntity;->e:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 47
    new-array p1, p1, [Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->f:Ljava/lang/reflect/Constructor;

    .line 48
    iget-object p1, p0, Lorg/xutils/db/table/TableEntity;->f:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 49
    const-class p1, Lorg/xutils/db/annotation/Table;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/xutils/db/annotation/Table;

    .line 50
    invoke-interface {p1}, Lorg/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->b:Ljava/lang/String;

    .line 51
    invoke-interface {p1}, Lorg/xutils/db/annotation/Table;->onCreated()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->c:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lorg/xutils/db/table/a;->a(Ljava/lang/Class;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->h:Ljava/util/LinkedHashMap;

    .line 54
    iget-object p1, p0, Lorg/xutils/db/table/TableEntity;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/xutils/db/table/ColumnEntity;

    .line 55
    invoke-virtual {p2}, Lorg/xutils/db/table/ColumnEntity;->isId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iput-object p2, p0, Lorg/xutils/db/table/TableEntity;->d:Lorg/xutils/db/table/ColumnEntity;

    :cond_1
    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lorg/xutils/db/table/TableEntity;->g:Z

    return-void
.end method

.method a()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lorg/xutils/db/table/TableEntity;->g:Z

    return v0
.end method

.method public createEntity()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->f:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getColumnMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->h:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDb()Lorg/xutils/DbManager;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    return-object v0
.end method

.method public getEntityType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public getId()Lorg/xutils/db/table/ColumnEntity;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->d:Lorg/xutils/db/table/ColumnEntity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getOnCreated()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public tableIsExist()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 71
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->a:Lorg/xutils/DbManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xutils/db/table/TableEntity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 74
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Lorg/xutils/db/table/TableEntity;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    return v1

    :cond_1
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 82
    :try_start_1
    new-instance v2, Lorg/xutils/ex/DbException;

    invoke-direct {v2, v1}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :goto_0
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v1

    :cond_2
    :goto_1
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->b:Ljava/lang/String;

    return-object v0
.end method
