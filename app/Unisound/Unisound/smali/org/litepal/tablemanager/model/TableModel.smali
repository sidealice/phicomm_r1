.class public Lorg/litepal/tablemanager/model/TableModel;
.super Ljava/lang/Object;
.source "TableModel.java"


# instance fields
.field private className:Ljava/lang/String;

.field private columnModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public addColumnModel(Lorg/litepal/tablemanager/model/ColumnModel;)V
    .locals 1
    .param p1, "columnModel"    # Lorg/litepal/tablemanager/model/ColumnModel;

    .prologue
    .line 93
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public containsColumn(Ljava/lang/String;)Z
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 154
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 149
    :cond_0
    iget-object v2, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 150
    .local v0, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    const/4 v2, 0x1

    goto :goto_1

    .line 148
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnModelByName(Ljava/lang/String;)Lorg/litepal/tablemanager/model/ColumnModel;
    .locals 3
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v1, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 111
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 112
    .local v0, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getColumnModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public removeColumnModelByName(Ljava/lang/String;)V
    .locals 4
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    const/4 v2, -0x1

    .line 129
    .local v2, "indexToRemove":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 136
    :goto_2
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 137
    iget-object v3, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_2
    iget-object v3, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 131
    .local v0, "columnModel":Lorg/litepal/tablemanager/model/ColumnModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    move v2, v1

    .line 133
    goto :goto_2

    .line 129
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/litepal/tablemanager/model/TableModel;->className:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/litepal/tablemanager/model/TableModel;->tableName:Ljava/lang/String;

    .line 65
    return-void
.end method
