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
.field private volatile checkedDatabase:Z

.field private final columnMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation
.end field

.field private constructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final db:Lorg/xutils/DbManager;

.field private entityType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private id:Lorg/xutils/db/table/ColumnEntity;

.field private final name:Ljava/lang/String;

.field private final onCreated:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/xutils/DbManager;Ljava/lang/Class;)V
    .locals 4
    .param p1, "db"    # Lorg/xutils/DbManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    .local p2, "entityType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    .line 46
    iput-object p2, p0, Lorg/xutils/db/table/TableEntity;->entityType:Ljava/lang/Class;

    .line 47
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/db/table/TableEntity;->constructor:Ljava/lang/reflect/Constructor;

    .line 48
    iget-object v2, p0, Lorg/xutils/db/table/TableEntity;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 49
    const-class v2, Lorg/xutils/db/annotation/Table;

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/xutils/db/annotation/Table;

    .line 50
    .local v1, "table":Lorg/xutils/db/annotation/Table;
    invoke-interface {v1}, Lorg/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/db/table/TableEntity;->name:Ljava/lang/String;

    .line 51
    invoke-interface {v1}, Lorg/xutils/db/annotation/Table;->onCreated()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/db/table/TableEntity;->onCreated:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lorg/xutils/db/table/TableUtils;->findColumnMap(Ljava/lang/Class;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iput-object v2, p0, Lorg/xutils/db/table/TableEntity;->columnMap:Ljava/util/LinkedHashMap;

    .line 54
    iget-object v2, p0, Lorg/xutils/db/table/TableEntity;->columnMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/db/table/ColumnEntity;

    .line 55
    .local v0, "column":Lorg/xutils/db/table/ColumnEntity;
    invoke-virtual {v0}, Lorg/xutils/db/table/ColumnEntity;->isId()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iput-object v0, p0, Lorg/xutils/db/table/TableEntity;->id:Lorg/xutils/db/table/ColumnEntity;

    .line 60
    .end local v0    # "column":Lorg/xutils/db/table/ColumnEntity;
    :cond_1
    return-void
.end method


# virtual methods
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

    .prologue
    .line 63
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->constructor:Ljava/lang/reflect/Constructor;

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
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/xutils/db/table/ColumnEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->columnMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDb()Lorg/xutils/DbManager;
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    return-object v0
.end method

.method public getEntityType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->entityType:Ljava/lang/Class;

    return-object v0
.end method

.method public getId()Lorg/xutils/db/table/ColumnEntity;
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->id:Lorg/xutils/db/table/ColumnEntity;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOnCreated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->onCreated:Ljava/lang/String;

    return-object v0
.end method

.method isCheckedDatabase()Z
    .locals 1

    .prologue
    .line 116
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iget-boolean v0, p0, Lorg/xutils/db/table/TableEntity;->checkedDatabase:Z

    return v0
.end method

.method setCheckedDatabase(Z)V
    .locals 0
    .param p1, "checkedDatabase"    # Z

    .prologue
    .line 120
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iput-boolean p1, p0, Lorg/xutils/db/table/TableEntity;->checkedDatabase:Z

    .line 121
    return-void
.end method

.method public tableIsExist()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 67
    invoke-virtual {p0}, Lorg/xutils/db/table/TableEntity;->isCheckedDatabase()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    :goto_0
    return v3

    .line 71
    :cond_0
    iget-object v5, p0, Lorg/xutils/db/table/TableEntity;->db:Lorg/xutils/DbManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/xutils/db/table/TableEntity;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/xutils/DbManager;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 72
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 74
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 76
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 77
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lorg/xutils/db/table/TableEntity;->setCheckedDatabase(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_0

    .end local v0    # "count":I
    :cond_1
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    :cond_2
    move v3, v4

    .line 88
    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    new-instance v3, Lorg/xutils/ex/DbException;

    invoke-direct {v3, v2}, Lorg/xutils/ex/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Landroid/database/Cursor;)V

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    .local p0, "this":Lorg/xutils/db/table/TableEntity;, "Lorg/xutils/db/table/TableEntity<TT;>;"
    iget-object v0, p0, Lorg/xutils/db/table/TableEntity;->name:Ljava/lang/String;

    return-object v0
.end method
