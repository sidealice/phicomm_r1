.class public final Lorg/greenrobot/greendao/internal/DaoConfig;
.super Ljava/lang/Object;
.source "DaoConfig.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final allColumns:[Ljava/lang/String;

.field public final db:Lorg/greenrobot/greendao/database/Database;

.field private identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/greenrobot/greendao/identityscope/IdentityScope",
            "<**>;"
        }
    .end annotation
.end field

.field public final keyIsNumeric:Z

.field public final nonPkColumns:[Ljava/lang/String;

.field public final pkColumns:[Ljava/lang/String;

.field public final pkProperty:Lorg/greenrobot/greendao/Property;

.field public final properties:[Lorg/greenrobot/greendao/Property;

.field public final statements:Lorg/greenrobot/greendao/internal/TableStatements;

.field public final tablename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V
    .locals 17
    .param p1, "db"    # Lorg/greenrobot/greendao/database/Database;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p2, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/greenrobot/greendao/internal/DaoConfig;->db:Lorg/greenrobot/greendao/database/Database;

    .line 56
    :try_start_0
    const-string v13, "TABLENAME"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 57
    invoke-static/range {p2 .. p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->reflectProperties(Ljava/lang/Class;)[Lorg/greenrobot/greendao/Property;

    move-result-object v10

    .line 58
    .local v10, "properties":[Lorg/greenrobot/greendao/Property;
    move-object/from16 v0, p0

    iput-object v10, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    .line 60
    array-length v13, v10

    new-array v13, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    .line 62
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v8, "pkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v6, "nonPkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 65
    .local v4, "lastPkProperty":Lorg/greenrobot/greendao/Property;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v13, v10

    if-ge v3, v13, :cond_1

    .line 66
    aget-object v11, v10, v3

    .line 67
    .local v11, "property":Lorg/greenrobot/greendao/Property;
    iget-object v5, v11, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 68
    .local v5, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    aput-object v5, v13, v3

    .line 69
    iget-boolean v13, v11, Lorg/greenrobot/greendao/Property;->primaryKey:Z

    if-eqz v13, :cond_0

    .line 70
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    move-object v4, v11

    .line 65
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    :cond_0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 93
    .end local v3    # "i":I
    .end local v4    # "lastPkProperty":Lorg/greenrobot/greendao/Property;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "nonPkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "pkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "properties":[Lorg/greenrobot/greendao/Property;
    .end local v11    # "property":Lorg/greenrobot/greendao/Property;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    new-instance v13, Lorg/greenrobot/greendao/DaoException;

    const-string v14, "Could not init DAOConfig"

    invoke-direct {v13, v14, v2}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 76
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v4    # "lastPkProperty":Lorg/greenrobot/greendao/Property;
    .restart local v6    # "nonPkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "pkColumnList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "properties":[Lorg/greenrobot/greendao/Property;
    :cond_1
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    new-array v7, v13, [Ljava/lang/String;

    .line 77
    .local v7, "nonPkColumnsArray":[Ljava/lang/String;
    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    .line 78
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    new-array v9, v13, [Ljava/lang/String;

    .line 79
    .local v9, "pkColumnsArray":[Ljava/lang/String;
    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 81
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    array-length v13, v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    .end local v4    # "lastPkProperty":Lorg/greenrobot/greendao/Property;
    :goto_2
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    .line 82
    new-instance v13, Lorg/greenrobot/greendao/internal/TableStatements;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v13, v0, v14, v15, v1}, Lorg/greenrobot/greendao/internal/TableStatements;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 84
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    if-eqz v13, :cond_5

    .line 85
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    iget-object v12, v13, Lorg/greenrobot/greendao/Property;->type:Ljava/lang/Class;

    .line 86
    .local v12, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-class v13, Ljava/lang/Long;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-class v13, Ljava/lang/Integer;

    .line 87
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-class v13, Ljava/lang/Short;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    sget-object v13, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 88
    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-class v13, Ljava/lang/Byte;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_2
    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z

    .line 96
    .end local v12    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    return-void

    .line 81
    .restart local v4    # "lastPkProperty":Lorg/greenrobot/greendao/Property;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 88
    .end local v4    # "lastPkProperty":Lorg/greenrobot/greendao/Property;
    .restart local v12    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    .line 90
    .end local v12    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V
    .locals 1
    .param p1, "source"    # Lorg/greenrobot/greendao/internal/DaoConfig;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->db:Lorg/greenrobot/greendao/database/Database;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->db:Lorg/greenrobot/greendao/database/Database;

    .line 128
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 129
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    .line 130
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->allColumns:[Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkColumns:[Ljava/lang/String;

    .line 132
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->nonPkColumns:[Ljava/lang/String;

    .line 133
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->pkProperty:Lorg/greenrobot/greendao/Property;

    .line 134
    iget-object v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->statements:Lorg/greenrobot/greendao/internal/TableStatements;

    .line 135
    iget-boolean v0, p1, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z

    iput-boolean v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z

    .line 136
    return-void
.end method

.method private static reflectProperties(Ljava/lang/Class;)[Lorg/greenrobot/greendao/Property;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/greenrobot/greendao/AbstractDao",
            "<**>;>;)[",
            "Lorg/greenrobot/greendao/Property;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "daoClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/greenrobot/greendao/AbstractDao<**>;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$Properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 101
    .local v5, "propertiesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 103
    .local v2, "fields":[Ljava/lang/reflect/Field;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v7, "propertyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/greenrobot/greendao/Property;>;"
    const/16 v3, 0x9

    .line 105
    .local v3, "modifierMask":I
    array-length v9, v2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v0, v2, v8

    .line 107
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    and-int/lit8 v10, v10, 0x9

    const/16 v11, 0x9

    if-ne v10, v11, :cond_0

    .line 108
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, "fieldValue":Ljava/lang/Object;
    instance-of v10, v1, Lorg/greenrobot/greendao/Property;

    if-eqz v10, :cond_0

    .line 110
    check-cast v1, Lorg/greenrobot/greendao/Property;

    .end local v1    # "fieldValue":Ljava/lang/Object;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v4, v8, [Lorg/greenrobot/greendao/Property;

    .line 116
    .local v4, "properties":[Lorg/greenrobot/greendao/Property;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/greenrobot/greendao/Property;

    .line 117
    .local v6, "property":Lorg/greenrobot/greendao/Property;
    iget v9, v6, Lorg/greenrobot/greendao/Property;->ordinal:I

    aget-object v9, v4, v9

    if-eqz v9, :cond_2

    .line 118
    new-instance v8, Lorg/greenrobot/greendao/DaoException;

    const-string v9, "Duplicate property ordinals"

    invoke-direct {v8, v9}, Lorg/greenrobot/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 120
    :cond_2
    iget v9, v6, Lorg/greenrobot/greendao/Property;->ordinal:I

    aput-object v6, v4, v9

    goto :goto_1

    .line 122
    .end local v6    # "property":Lorg/greenrobot/greendao/Property;
    :cond_3
    return-object v4
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/greenrobot/greendao/internal/DaoConfig;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;)V

    return-object v0
.end method

.method public getIdentityScope()Lorg/greenrobot/greendao/identityscope/IdentityScope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/greenrobot/greendao/identityscope/IdentityScope",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    return-object v0
.end method

.method public initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V
    .locals 3
    .param p1, "type"    # Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    .prologue
    .line 154
    sget-object v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->None:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_0

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 165
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-object v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    if-ne p1, v0, :cond_2

    .line 157
    iget-boolean v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->keyIsNumeric:Z

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;

    invoke-direct {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScopeLong;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    goto :goto_0

    .line 160
    :cond_1
    new-instance v0, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;

    invoke-direct {v0}, Lorg/greenrobot/greendao/identityscope/IdentityScopeObject;-><init>()V

    iput-object v0, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    goto :goto_0

    .line 163
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/identityscope/IdentityScope",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "identityScope":Lorg/greenrobot/greendao/identityscope/IdentityScope;, "Lorg/greenrobot/greendao/identityscope/IdentityScope<**>;"
    iput-object p1, p0, Lorg/greenrobot/greendao/internal/DaoConfig;->identityScope:Lorg/greenrobot/greendao/identityscope/IdentityScope;

    .line 150
    return-void
.end method
