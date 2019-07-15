.class public Lorg/greenrobot/greendao/internal/TableStatements;
.super Ljava/lang/Object;
.source "TableStatements.java"


# instance fields
.field private final allColumns:[Ljava/lang/String;

.field private countStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private final db:Lorg/greenrobot/greendao/database/Database;

.field private deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

.field private final pkColumns:[Ljava/lang/String;

.field private volatile selectAll:Ljava/lang/String;

.field private volatile selectByKey:Ljava/lang/String;

.field private volatile selectByRowId:Ljava/lang/String;

.field private volatile selectKeys:Ljava/lang/String;

.field private final tablename:Ljava/lang/String;

.field private updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .param p2, "tablename"    # Ljava/lang/String;
    .param p3, "allColumns"    # [Ljava/lang/String;
    .param p4, "pkColumns"    # [Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    .line 43
    iput-object p2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getCountStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 2

    .prologue
    .line 113
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->countStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    invoke-static {v1}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "sql":Ljava/lang/String;
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v1, v0}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v1

    iput-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->countStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 117
    .end local v0    # "sql":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->countStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v1
.end method

.method public getDeleteStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 4

    .prologue
    .line 81
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v2, :cond_1

    .line 82
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlDelete(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2, v1}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 84
    .local v0, "newDeleteStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v2, :cond_0

    .line 86
    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 88
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v2, v0, :cond_1

    .line 90
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    .line 93
    .end local v0    # "newDeleteStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    .end local v1    # "sql":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->deleteStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v2

    .line 88
    .restart local v0    # "newDeleteStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    .restart local v1    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getInsertOrReplaceStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 5

    .prologue
    .line 65
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v2, :cond_1

    .line 66
    const-string v2, "INSERT OR REPLACE INTO "

    iget-object v3, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v4, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlInsert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2, v1}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 68
    .local v0, "newInsertOrReplaceStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v2, :cond_0

    .line 70
    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 72
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v2, v0, :cond_1

    .line 74
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    .line 77
    .end local v0    # "newInsertOrReplaceStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    .end local v1    # "sql":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertOrReplaceStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v2

    .line 72
    .restart local v0    # "newInsertOrReplaceStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    .restart local v1    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getInsertStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 5

    .prologue
    .line 49
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v2, :cond_1

    .line 50
    const-string v2, "INSERT INTO "

    iget-object v3, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v4, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlInsert(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2, v1}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 52
    .local v0, "newInsertStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v2, :cond_0

    .line 54
    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 56
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v2, v0, :cond_1

    .line 58
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    .line 61
    .end local v0    # "newInsertStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    .end local v1    # "sql":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->insertStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v2

    .line 56
    .restart local v0    # "newInsertStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    .restart local v1    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSelectAll()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectAll:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    const-string v1, "T"

    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectAll:Ljava/lang/String;

    .line 125
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectAll:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectByKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 138
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByKey:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, "T"

    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/greenrobot/greendao/internal/SqlUtils;->appendColumnsEqValue(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByKey:Ljava/lang/String;

    .line 144
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v1, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByKey:Ljava/lang/String;

    return-object v1
.end method

.method public getSelectByRowId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByRowId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/greenrobot/greendao/internal/TableStatements;->getSelectAll()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE ROWID=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByRowId:Ljava/lang/String;

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectByRowId:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectKeys()Ljava/lang/String;
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectKeys:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    const-string v1, "T"

    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlSelect(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectKeys:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->selectKeys:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateStatement()Lorg/greenrobot/greendao/database/DatabaseStatement;
    .locals 5

    .prologue
    .line 97
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v2, :cond_1

    .line 98
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->tablename:Ljava/lang/String;

    iget-object v3, p0, Lorg/greenrobot/greendao/internal/TableStatements;->allColumns:[Ljava/lang/String;

    iget-object v4, p0, Lorg/greenrobot/greendao/internal/TableStatements;->pkColumns:[Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/greenrobot/greendao/internal/SqlUtils;->createSqlUpdate(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "sql":Ljava/lang/String;
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->db:Lorg/greenrobot/greendao/database/Database;

    invoke-interface {v2, v1}, Lorg/greenrobot/greendao/database/Database;->compileStatement(Ljava/lang/String;)Lorg/greenrobot/greendao/database/DatabaseStatement;

    move-result-object v0

    .line 100
    .local v0, "newUpdateStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-nez v2, :cond_0

    .line 102
    iput-object v0, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    .line 104
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    if-eq v2, v0, :cond_1

    .line 106
    invoke-interface {v0}, Lorg/greenrobot/greendao/database/DatabaseStatement;->close()V

    .line 109
    .end local v0    # "newUpdateStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    .end local v1    # "sql":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lorg/greenrobot/greendao/internal/TableStatements;->updateStatement:Lorg/greenrobot/greendao/database/DatabaseStatement;

    return-object v2

    .line 104
    .restart local v0    # "newUpdateStatement":Lorg/greenrobot/greendao/database/DatabaseStatement;
    .restart local v1    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
