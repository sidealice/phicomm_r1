.class public Lorg/greenrobot/greendao/database/StandardDatabaseStatement;
.super Ljava/lang/Object;
.source "StandardDatabaseStatement.java"

# interfaces
.implements Lorg/greenrobot/greendao/database/DatabaseStatement;


# instance fields
.field private final delegate:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0
    .param p1, "delegate"    # Landroid/database/sqlite/SQLiteStatement;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    .line 25
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # [B

    .prologue
    .line 54
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 55
    return-void
.end method

.method public bindDouble(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 69
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 70
    return-void
.end method

.method public bindLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 59
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 60
    return-void
.end method

.method public bindNull(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 40
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 50
    return-void
.end method

.method public clearBindings()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 65
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 75
    return-void
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 30
    return-void
.end method

.method public executeInsert()J
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRawStatement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public simpleQueryForLong()J
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lorg/greenrobot/greendao/database/StandardDatabaseStatement;->delegate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method
