.class public abstract Lorg/litepal/tablemanager/Generator;
.super Lorg/litepal/LitePalBase;
.source "Generator.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Generator"


# instance fields
.field private mAllRelationModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTableModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/litepal/LitePalBase;-><init>()V

    return-void
.end method

.method private static addAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "force"    # Z

    .prologue
    .line 129
    new-instance v0, Lorg/litepal/tablemanager/Creator;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Creator;-><init>()V

    .line 130
    .local v0, "associationsCreator":Lorg/litepal/tablemanager/AssociationCreator;
    invoke-virtual {v0, p0, p1}, Lorg/litepal/tablemanager/AssociationCreator;->addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 131
    return-void
.end method

.method private canUseCache()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 192
    iget-object v1, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    if-nez v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v2

    invoke-virtual {v2}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static create(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->create(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 208
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->addAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 209
    return-void
.end method

.method private static create(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "force"    # Z

    .prologue
    .line 168
    new-instance v0, Lorg/litepal/tablemanager/Creator;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Creator;-><init>()V

    .line 169
    .local v0, "creator":Lorg/litepal/tablemanager/Creator;
    invoke-virtual {v0, p0, p1}, Lorg/litepal/tablemanager/Creator;->createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 170
    return-void
.end method

.method private static drop(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 180
    new-instance v0, Lorg/litepal/tablemanager/Dropper;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Dropper;-><init>()V

    .line 181
    .local v0, "dropper":Lorg/litepal/tablemanager/Dropper;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/litepal/tablemanager/Dropper;->createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 182
    return-void
.end method

.method private static updateAssociations(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 141
    new-instance v0, Lorg/litepal/tablemanager/Upgrader;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Upgrader;-><init>()V

    .line 142
    .local v0, "associationUpgrader":Lorg/litepal/tablemanager/AssociationUpdater;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/litepal/tablemanager/AssociationUpdater;->addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 143
    return-void
.end method

.method static upgrade(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v0, 0x0

    .line 220
    invoke-static {p0}, Lorg/litepal/tablemanager/Generator;->drop(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 221
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->create(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 222
    invoke-static {p0}, Lorg/litepal/tablemanager/Generator;->updateAssociations(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 223
    invoke-static {p0}, Lorg/litepal/tablemanager/Generator;->upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 224
    invoke-static {p0, v0}, Lorg/litepal/tablemanager/Generator;->addAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 225
    return-void
.end method

.method private static upgradeTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 153
    new-instance v0, Lorg/litepal/tablemanager/Upgrader;

    invoke-direct {v0}, Lorg/litepal/tablemanager/Upgrader;-><init>()V

    .line 154
    .local v0, "upgrader":Lorg/litepal/tablemanager/Upgrader;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/litepal/tablemanager/Upgrader;->createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 155
    return-void
.end method


# virtual methods
.method protected abstract addOrUpdateAssociation(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method protected abstract createOrUpgradeTable(Landroid/database/sqlite/SQLiteDatabase;Z)V
.end method

.method protected execute([Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "sqls"    # [Ljava/lang/String;
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 106
    const-string v2, ""

    .line 108
    .local v2, "throwSQL":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 109
    :try_start_0
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 117
    :cond_0
    return-void

    .line 109
    :cond_1
    aget-object v1, p1, v3

    .line 110
    .local v1, "sql":Ljava/lang/String;
    move-object v2, v1

    .line 111
    invoke-static {v1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "sql":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/database/SQLException;
    new-instance v3, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An exception that indicates there was an error with SQL parsing or execution. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getAllAssociations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation

    .prologue
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/tablemanager/model/TableModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v1, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    .line 69
    :cond_0
    invoke-direct {p0}, Lorg/litepal/tablemanager/Generator;->canUseCache()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    iget-object v1, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 71
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v1

    invoke-virtual {v1}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 75
    :cond_1
    iget-object v1, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    return-object v1

    .line 71
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 72
    .local v0, "className":Ljava/lang/String;
    iget-object v2, p0, Lorg/litepal/tablemanager/Generator;->mTableModels:Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/litepal/tablemanager/Generator;->getTableModel(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
