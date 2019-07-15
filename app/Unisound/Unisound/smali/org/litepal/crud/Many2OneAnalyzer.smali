.class Lorg/litepal/crud/Many2OneAnalyzer;
.super Lorg/litepal/crud/AssociationsAnalyzer;
.source "Many2OneAnalyzer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/litepal/crud/AssociationsAnalyzer;-><init>()V

    return-void
.end method

.method private analyzeManySide(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;
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
    .line 89
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->getAssociatedModel(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Lorg/litepal/crud/DataSupport;

    move-result-object v0

    .line 90
    .local v0, "associatedModel":Lorg/litepal/crud/DataSupport;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, v0, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->getReverseAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;

    move-result-object v2

    .line 95
    .local v2, "tempCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object v3

    .line 94
    invoke-virtual {p0, v2, v3}, Lorg/litepal/crud/Many2OneAnalyzer;->checkAssociatedModelCollection(Ljava/util/Collection;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v1

    .line 96
    .local v1, "reverseAssociatedModels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-virtual {p0, v0, p2, v1}, Lorg/litepal/crud/Many2OneAnalyzer;->setReverseAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;Ljava/util/Collection;)V

    .line 97
    invoke-direct {p0, v1, p1, v0}, Lorg/litepal/crud/Many2OneAnalyzer;->dealAssociatedModelOnManySide(Ljava/util/Collection;Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V

    .line 101
    .end local v1    # "reverseAssociatedModels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    .end local v2    # "tempCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->mightClearFKValue(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    goto :goto_0
.end method

.method private analyzeOneSide(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 5
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;
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
    .line 125
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->getAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;

    move-result-object v1

    .line 126
    .local v1, "associatedModels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    :cond_0
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-static {v3}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "tableName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/litepal/crud/DataSupport;->addAssociatedTableNameToClearFK(Ljava/lang/String;)V

    .line 136
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_1
    return-void

    .line 132
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/DataSupport;

    .line 133
    .local v0, "associatedModel":Lorg/litepal/crud/DataSupport;
    invoke-virtual {p0, p1, v0, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->buildBidirectionalAssociations(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    .line 134
    invoke-direct {p0, p1, v0}, Lorg/litepal/crud/Many2OneAnalyzer;->dealAssociatedModelOnOneSide(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V

    goto :goto_0
.end method

.method private dealAssociatedModelOnManySide(Ljava/util/Collection;Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V
    .locals 4
    .param p2, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p3, "associatedModel"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/DataSupport;",
            ">;",
            "Lorg/litepal/crud/DataSupport;",
            "Lorg/litepal/crud/DataSupport;",
            ")V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "associatedModels":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/DataSupport;>;"
    invoke-interface {p1, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_0
    invoke-virtual {p3}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p3}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-virtual {p3}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v2

    .line 158
    invoke-virtual {p2, v0, v2, v3}, Lorg/litepal/crud/DataSupport;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    .line 161
    :cond_1
    return-void
.end method

.method private dealAssociatedModelOnOneSide(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V
    .locals 0
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedModel"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->dealsAssociationsOnTheSideWithoutFK(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V

    .line 174
    return-void
.end method


# virtual methods
.method analyze(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 2
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associationInfo"    # Lorg/litepal/crud/model/AssociationsInfo;
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
    .line 59
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getClassHoldsForeignKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->analyzeManySide(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/Many2OneAnalyzer;->analyzeOneSide(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    goto :goto_0
.end method
