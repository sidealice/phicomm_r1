.class public Lorg/litepal/crud/One2OneAnalyzer;
.super Lorg/litepal/crud/AssociationsAnalyzer;
.source "One2OneAnalyzer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/litepal/crud/AssociationsAnalyzer;-><init>()V

    return-void
.end method

.method private bidirectionalCondition(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V
    .locals 3

    .line 105
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v1

    .line 107
    invoke-virtual {p1, v0, v1, v2}, Lorg/litepal/crud/DataSupport;->addAssociatedModelWithFK(Ljava/lang/String;J)V

    .line 110
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p2}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v1

    .line 110
    invoke-virtual {p1, v0, v1, v2}, Lorg/litepal/crud/DataSupport;->addAssociatedModelWithoutFK(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private dealAssociatedModel(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 0

    .line 85
    invoke-virtual {p3}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateSelfFromOtherModel()Ljava/lang/reflect/Field;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/One2OneAnalyzer;->bidirectionalCondition(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/One2OneAnalyzer;->unidirectionalCondition(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V

    :goto_0
    return-void
.end method

.method private unidirectionalCondition(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V
    .locals 0

    .line 124
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/One2OneAnalyzer;->dealsAssociationsOnTheSideWithoutFK(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;)V

    return-void
.end method


# virtual methods
.method analyze(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 58
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/One2OneAnalyzer;->getAssociatedModel(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Lorg/litepal/crud/DataSupport;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, p1, v0, p2}, Lorg/litepal/crud/One2OneAnalyzer;->buildBidirectionalAssociations(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    .line 61
    invoke-direct {p0, p1, v0, p2}, Lorg/litepal/crud/One2OneAnalyzer;->dealAssociatedModel(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object p2

    .line 63
    invoke-static {p2}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Lorg/litepal/crud/DataSupport;->addAssociatedTableNameToClearFK(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
