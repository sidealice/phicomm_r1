.class public abstract Lorg/litepal/tablemanager/Generator;
.super Lorg/litepal/LitePalBase;
.source "Generator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Generator"


# instance fields
.field private mAllRelationModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTableModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/litepal/LitePalBase;-><init>()V

    return-void
.end method

.method private static addAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .line 131
    new-instance v0, Lorg/litepal/tablemanager/Creator;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Creator;-><init>()V

    .line 132
    invoke-virtual {v0, p0, p1}, Lorg/litepal/tablemanager/AssociationCreator;->addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private canUseCache()Z
    .locals 3

    .line 194
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 197
    :cond_0
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const/4 v0, 0x1

    .line 209
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->create(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 210
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->addAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static create(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    .line 170
    new-instance v0, Lorg/litepal/tablemanager/Creator;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Creator;-><init>()V

    .line 171
    invoke-virtual {v0, p0, p1}, Lorg/litepal/tablemanager/Creator;->createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static drop(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 182
    new-instance v0, Lorg/litepal/tablemanager/Dropper;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Dropper;-><init>()V

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, p0, v1}, Lorg/litepal/tablemanager/Dropper;->createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static updateAssociations(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 143
    new-instance v0, Lorg/litepal/tablemanager/Upgrader;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Upgrader;-><init>()V

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, p0, v1}, Lorg/litepal/tablemanager/AssociationUpdater;->addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 222
    invoke-static {p0}, Lorg/litepal/tablemanager/Generator;->drop(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x0

    .line 223
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->create(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 224
    invoke-static {p0}, Lorg/litepal/tablemanager/Generator;->updateAssociations(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 225
    invoke-static {p0}, Lorg/litepal/tablemanager/Generator;->upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 226
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->addAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 155
    new-instance v0, Lorg/litepal/tablemanager/Upgrader;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Upgrader;-><init>()V

    const/4 v1, 0x0

    .line 156
    invoke-virtual {v0, p0, v1}, Lorg/litepal/tablemanager/Upgrader;->createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method


# virtual methods
.method protected abstract addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method protected abstract createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method protected execute(Ljava/util/List;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")V"
        }
    .end annotation

    const-string v0, ""

    if-eqz p1, :cond_1

    .line 108
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    invoke-static {v1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :try_start_1
    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-object v0, v1

    .line 117
    :catch_1
    new-instance p1, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An exception that indicates there was an error with SQL parsing or execution. "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method protected getAllAssociations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mAllRelationModels:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mAllRelationModels:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/tablemanager/Generator;->getAssociations(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lorg/litepal/tablemanager/Generator;->mAllRelationModels:Ljava/util/Collection;

    .line 90
    :cond_1
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mAllRelationModels:Ljava/util/Collection;

    return-object v0
.end method

.method protected getAllTableModels()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    .line 71
    :cond_0
    invoke-direct {p0}, Lorg/litepal/tablemanager/Generator;->canUseCache()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 73
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    iget-object v2, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    invoke-virtual {p0, v1}, Lorg/litepal/tablemanager/Generator;->getTableModel(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    :cond_1
    iget-object v0, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    return-object v0
.end method
