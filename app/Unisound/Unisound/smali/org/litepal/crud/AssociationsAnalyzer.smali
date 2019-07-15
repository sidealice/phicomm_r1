.class abstract Lorg/litepal/crud/AssociationsAnalyzer;
.super Lorg/litepal/crud/DataHandler;
.source "AssociationsAnalyzer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;-><init>()V

    return-void
.end method

.method private getForeignKeyName(Lorg/litepal/crud/model/AssociationsInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;

    .prologue
    .line 190
    .line 191
    invoke-virtual {p1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-static {v0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/crud/AssociationsAnalyzer;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected buildBidirectionalAssociations(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedModel"    # Lorg/litepal/crud/DataSupport;
    .param p3, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p3}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p1}, Lorg/litepal/crud/AssociationsAnalyzer;->putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method protected checkAssociatedModelCollection(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;
    .locals 3
    .param p2, "associatedField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/DataSupport;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/DataSupport;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "associatedModelCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    const/4 v0, 0x0

    .line 106
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/litepal/crud/AssociationsAnalyzer;->isList(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    :goto_0
    if-eqz p1, :cond_0

    .line 114
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_0
    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/litepal/crud/AssociationsAnalyzer;->isSet(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 110
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    goto :goto_0

    .line 111
    :cond_2
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    const-string v2, "The field to declare many2one or many2many associations should be List or Set."

    invoke-direct {v1, v2}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dealsAssociationsOnTheSideWithoutFK(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedModel"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 155
    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v2

    .line 157
    invoke-virtual {p1, v0, v2, v3}, Lorg/litepal/crud/DataSupport;->addAssociatedModelWithFK(Ljava/lang/String;J)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v2

    .line 161
    invoke-virtual {p2, v0, v2, v3}, Lorg/litepal/crud/DataSupport;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method protected getReverseAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;
    .locals 1
    .param p1, "associatedModel"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/DataSupport;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 58
    .line 59
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 58
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/AssociationsAnalyzer;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method protected mightClearFKValue(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;

    .prologue
    .line 179
    invoke-direct {p0, p2}, Lorg/litepal/crud/AssociationsAnalyzer;->getForeignKeyName(Lorg/litepal/crud/model/AssociationsInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/litepal/crud/DataSupport;->addFKNameToClearSelf(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method protected setReverseAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;Ljava/util/Collection;)V
    .locals 1
    .param p1, "associatedModel"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/DataSupport;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 83
    .local p3, "associatedModelCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/litepal/crud/AssociationsAnalyzer;->putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 85
    return-void
.end method
