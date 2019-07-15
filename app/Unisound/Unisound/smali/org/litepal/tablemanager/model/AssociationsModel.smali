.class public Lorg/litepal/tablemanager/model/AssociationsModel;
.super Ljava/lang/Object;
.source "AssociationsModel.java"


# instance fields
.field private associatedTableName:Ljava/lang/String;

.field private associationType:I

.field private tableHoldsForeignKey:Ljava/lang/String;

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    .line 141
    instance-of v2, p1, Lorg/litepal/tablemanager/model/AssociationsModel;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 142
    check-cast v0, Lorg/litepal/tablemanager/model/AssociationsModel;

    .line 143
    .local v0, "association":Lorg/litepal/tablemanager/model/AssociationsModel;
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociatedTableName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 144
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociationType()I

    move-result v2

    iget v3, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associationType:I

    if-ne v2, v3, :cond_2

    .line 145
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableHoldsForeignKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociatedTableName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associatedTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableHoldsForeignKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    .end local v0    # "association":Lorg/litepal/tablemanager/model/AssociationsModel;
    :cond_0
    :goto_0
    return v1

    .line 150
    .restart local v0    # "association":Lorg/litepal/tablemanager/model/AssociationsModel;
    :cond_1
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associatedTableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getAssociatedTableName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    invoke-virtual {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;->getTableHoldsForeignKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    .end local v0    # "association":Lorg/litepal/tablemanager/model/AssociationsModel;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAssociatedTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associatedTableName:Ljava/lang/String;

    return-object v0
.end method

.method public getAssociationType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associationType:I

    return v0
.end method

.method public getTableHoldsForeignKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public setAssociatedTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "associatedTableName"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associatedTableName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setAssociationType(I)V
    .locals 0
    .param p1, "associationType"    # I

    .prologue
    .line 131
    iput p1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->associationType:I

    .line 132
    return-void
.end method

.method public setTableHoldsForeignKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableHoldsForeignKey"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableHoldsForeignKey:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setTableName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/litepal/tablemanager/model/AssociationsModel;->tableName:Ljava/lang/String;

    .line 73
    return-void
.end method
