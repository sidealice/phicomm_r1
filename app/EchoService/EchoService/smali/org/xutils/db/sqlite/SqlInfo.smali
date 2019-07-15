.class public final Lorg/xutils/db/sqlite/SqlInfo;
.super Ljava/lang/Object;
.source "SqlInfo.java"


# instance fields
.field private bindArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private sql:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public addBindArg(Lorg/xutils/common/util/KeyValue;)V
    .locals 1
    .param p1, "kv"    # Lorg/xutils/common/util/KeyValue;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    .line 53
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public addBindArgs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "bindArgs":Ljava/util/List;, "Ljava/util/List<Lorg/xutils/common/util/KeyValue;>;"
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public buildStatement(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteStatement;
    .locals 8
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 65
    iget-object v6, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 66
    .local v3, "result":Landroid/database/sqlite/SQLiteStatement;
    iget-object v6, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 67
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ge v1, v6, :cond_1

    .line 68
    iget-object v6, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    .line 69
    .local v2, "kv":Lorg/xutils/common/util/KeyValue;
    iget-object v6, v2, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v6}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 70
    .local v5, "value":Ljava/lang/Object;
    if-nez v5, :cond_0

    .line 71
    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 67
    .end local v5    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lorg/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lorg/xutils/db/converter/ColumnConverter;

    move-result-object v0

    .line 74
    .local v0, "converter":Lorg/xutils/db/converter/ColumnConverter;
    invoke-interface {v0}, Lorg/xutils/db/converter/ColumnConverter;->getColumnDbType()Lorg/xutils/db/sqlite/ColumnDbType;

    move-result-object v4

    .line 75
    .local v4, "type":Lorg/xutils/db/sqlite/ColumnDbType;
    sget-object v6, Lorg/xutils/db/sqlite/SqlInfo$1;->$SwitchMap$org$xutils$db$sqlite$ColumnDbType:[I

    invoke-virtual {v4}, Lorg/xutils/db/sqlite/ColumnDbType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 89
    invoke-virtual {v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 77
    :pswitch_0
    check-cast v5, Ljava/lang/Number;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    .line 80
    .restart local v5    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast v5, Ljava/lang/Number;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    goto :goto_1

    .line 83
    .restart local v5    # "value":Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 86
    :pswitch_3
    check-cast v5, [B

    .end local v5    # "value":Ljava/lang/Object;
    check-cast v5, [B

    invoke-virtual {v3, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    goto :goto_1

    .line 95
    .end local v0    # "converter":Lorg/xutils/db/converter/ColumnConverter;
    .end local v1    # "i":I
    .end local v2    # "kv":Lorg/xutils/common/util/KeyValue;
    .end local v4    # "type":Lorg/xutils/db/sqlite/ColumnDbType;
    :cond_1
    return-object v3

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getBindArgs()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, "result":[Ljava/lang/Object;
    iget-object v2, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 103
    iget-object v2, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    iget-object v2, v2, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v2}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public getBindArgsAsStrArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, "result":[Ljava/lang/String;
    iget-object v3, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 112
    iget-object v3, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 114
    iget-object v3, p0, Lorg/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xutils/common/util/KeyValue;

    iget-object v3, v3, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    invoke-static {v3}, Lorg/xutils/db/table/ColumnUtils;->convert2DbValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    aput-object v3, v1, v0

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 118
    .end local v0    # "i":I
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    return-object v1
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public setSql(Ljava/lang/String;)V
    .locals 0
    .param p1, "sql"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    .line 47
    return-void
.end method
