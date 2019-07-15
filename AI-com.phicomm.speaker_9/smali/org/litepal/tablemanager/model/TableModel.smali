.class public Lorg/litepal/tablemanager/model/TableModel;
.super Ljava/lang/Object;
.source "TableModel.java"


# instance fields
.field private className:Ljava/lang/String;

.field private columnModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation
.end field

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addColumnModel(Lorg/litepal/tablemanager/model/ColumnModel;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public containsColumn(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 148
    :goto_0
    iget-object v2, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 149
    iget-object v2, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 150
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getColumnModelByName(Ljava/lang/String;)Lorg/litepal/tablemanager/model/ColumnModel;
    .locals 3

    .line 111
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 112
    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getColumnModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/litepal/tablemanager/model/ColumnModel;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/litepal/tablemanager/model/TableModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public removeColumnModelByName(Ljava/lang/String;)V
    .locals 3

    .line 125
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 129
    :goto_0
    iget-object v1, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_2

    .line 130
    iget-object v1, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/tablemanager/model/ColumnModel;

    .line 131
    invoke-virtual {v1}, Lorg/litepal/tablemanager/model/ColumnModel;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    if-eq v0, v2, :cond_3

    .line 137
    iget-object p1, p0, Lorg/litepal/tablemanager/model/TableModel;->columnModels:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/litepal/tablemanager/model/TableModel;->className:Ljava/lang/String;

    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/litepal/tablemanager/model/TableModel;->tableName:Ljava/lang/String;

    return-void
.end method
