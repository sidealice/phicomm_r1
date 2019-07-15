.class abstract Lorg/litepal/crud/DataHandler;
.super Lorg/litepal/LitePalBase;
.source "DataHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/litepal/crud/DataHandler$QueryInfoCache;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DataHandler"


# instance fields
.field private fkInCurrentModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fkInOtherModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private tempEmptyModel:Lorg/litepal/crud/DataSupport;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/litepal/LitePalBase;-><init>()V

    return-void
.end method

.method private analyzeAssociations(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1120
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 1121
    .local v1, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    .line 1126
    :goto_0
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    if-nez v2, :cond_2

    .line 1127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    .line 1131
    :goto_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1143
    return-void

    .line 1124
    :cond_1
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1129
    :cond_2
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1131
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/model/AssociationsInfo;

    .line 1132
    .local v0, "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 1133
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1134
    :cond_4
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getClassHoldsForeignKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1135
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1137
    :cond_5
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1139
    :cond_6
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1140
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private genGetColumnMethod(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1051
    .local p1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1052
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/BaseUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, "typeName":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    .local v0, "methodName":Ljava/lang/String;
    const-string v2, "getBoolean"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1058
    const-string v0, "getInt"

    .line 1068
    :cond_0
    :goto_1
    return-object v0

    .line 1054
    .end local v0    # "methodName":Ljava/lang/String;
    .end local v1    # "typeName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "typeName":Ljava/lang/String;
    goto :goto_0

    .line 1059
    .restart local v0    # "methodName":Ljava/lang/String;
    :cond_2
    const-string v2, "getChar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "getCharacter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1060
    :cond_3
    const-string v0, "getString"

    .line 1061
    goto :goto_1

    :cond_4
    const-string v2, "getDate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1062
    const-string v0, "getLong"

    .line 1063
    goto :goto_1

    :cond_5
    const-string v2, "getInteger"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1064
    const-string v0, "getInt"

    .line 1065
    goto :goto_1

    :cond_6
    const-string v2, "getbyte[]"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1066
    const-string v0, "getBlob"

    goto :goto_1
.end method

.method private genGetColumnMethod(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 1035
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCustomizedColumns([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;
    .locals 8
    .param p1, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "foreignKeyAssociations":Ljava/util/List;, "Ljava/util/List<Lorg/litepal/crud/model/AssociationsInfo;>;"
    const/4 v7, 0x0

    .line 1084
    if-eqz p1, :cond_5

    .line 1085
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1086
    array-length v5, p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-array v4, v5, [Ljava/lang/String;

    .line 1087
    .local v4, "tempColumns":[Ljava/lang/String;
    array-length v5, p1

    invoke-static {p1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 1094
    move-object p1, v4

    .line 1096
    .end local v3    # "i":I
    .end local v4    # "tempColumns":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    array-length v5, p1

    if-lt v3, v5, :cond_2

    .line 1105
    array-length v5, p1

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    .line 1106
    .local v2, "customizedColumns":[Ljava/lang/String;
    array-length v5, p1

    invoke-static {p1, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1107
    array-length v5, p1

    const-string v6, "id"

    invoke-static {v6}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 1110
    .end local v2    # "customizedColumns":[Ljava/lang/String;
    .end local v3    # "i":I
    :goto_2
    return-object v2

    .line 1090
    .restart local v3    # "i":I
    .restart local v4    # "tempColumns":[Ljava/lang/String;
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/litepal/crud/model/AssociationsInfo;

    .line 1091
    invoke-virtual {v5}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v5

    .line 1090
    invoke-static {v5}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "associatedTable":Ljava/lang/String;
    array-length v5, p1

    add-int/2addr v5, v3

    invoke-virtual {p0, v0}, Lorg/litepal/crud/DataHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1088
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1097
    .end local v0    # "associatedTable":Ljava/lang/String;
    .end local v4    # "tempColumns":[Ljava/lang/String;
    :cond_2
    aget-object v1, p1, v3

    .line 1098
    .local v1, "columnName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1099
    const-string v5, "_id"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1100
    const-string v5, "id"

    invoke-static {v5}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v3

    :cond_3
    move-object v2, p1

    .line 1102
    goto :goto_2

    .line 1096
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1110
    .end local v1    # "columnName":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getInitParamValue(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "paramType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 826
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "paramTypeName":Ljava/lang/String;
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "java.lang.Boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 828
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 857
    :goto_0
    return-object v1

    .line 830
    :cond_1
    const-string v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "java.lang.Float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 831
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 833
    :cond_3
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "java.lang.Double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 834
    :cond_4
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 836
    :cond_5
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "java.lang.Integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 837
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 839
    :cond_7
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "java.lang.Long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 840
    :cond_8
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    .line 842
    :cond_9
    const-string v1, "short"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "java.lang.Short"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 843
    :cond_a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 845
    :cond_b
    const-string v1, "char"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "java.lang.Character"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 846
    :cond_c
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    goto/16 :goto_0

    .line 848
    :cond_d
    const-string v1, "[B"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "[Ljava.lang.Byte;"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 849
    :cond_e
    new-array v1, v2, [B

    goto/16 :goto_0

    .line 851
    :cond_f
    const-string v1, "java.lang.String"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 852
    const-string v1, ""

    goto/16 :goto_0

    .line 854
    :cond_10
    if-ne p1, p2, :cond_11

    .line 855
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 857
    :cond_11
    invoke-virtual {p0, p2}, Lorg/litepal/crud/DataHandler;->createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getObjectType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 791
    .local p1, "primitiveType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_6

    .line 792
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 793
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "basicTypeName":Ljava/lang/String;
    const-string v1, "int"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 795
    const-class v1, Ljava/lang/Integer;

    .line 811
    .end local v0    # "basicTypeName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 796
    .restart local v0    # "basicTypeName":Ljava/lang/String;
    :cond_0
    const-string v1, "short"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 797
    const-class v1, Ljava/lang/Short;

    goto :goto_0

    .line 798
    :cond_1
    const-string v1, "long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 799
    const-class v1, Ljava/lang/Long;

    goto :goto_0

    .line 800
    :cond_2
    const-string v1, "float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 801
    const-class v1, Ljava/lang/Float;

    goto :goto_0

    .line 802
    :cond_3
    const-string v1, "double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 803
    const-class v1, Ljava/lang/Double;

    goto :goto_0

    .line 804
    :cond_4
    const-string v1, "boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 805
    const-class v1, Ljava/lang/Boolean;

    goto :goto_0

    .line 806
    :cond_5
    const-string v1, "char"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 807
    const-class v1, Ljava/lang/Character;

    goto :goto_0

    .line 811
    .end local v0    # "basicTypeName":Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getParameterTypes(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 6
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "fieldValue"    # Ljava/lang/Object;
    .param p3, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 765
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->isCharType(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p3, v3

    .line 767
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    .line 777
    .local v0, "parameterTypes":[Ljava/lang/Class;
    :goto_0
    return-object v0

    .line 769
    .end local v0    # "parameterTypes":[Ljava/lang/Class;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/litepal/crud/DataHandler;->getObjectType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    .line 771
    .restart local v0    # "parameterTypes":[Ljava/lang/Class;
    goto :goto_0

    .end local v0    # "parameterTypes":[Ljava/lang/Class;
    :cond_1
    const-string v1, "java.util.Date"

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    const-class v1, Ljava/lang/Long;

    aput-object v1, v0, v3

    .line 773
    .restart local v0    # "parameterTypes":[Ljava/lang/Class;
    goto :goto_0

    .line 774
    .end local v0    # "parameterTypes":[Ljava/lang/Class;
    :cond_2
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v4

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, v0, v3

    .restart local v0    # "parameterTypes":[Ljava/lang/Class;
    goto :goto_0
.end method

.method private isCharType(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 868
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "type":Ljava/lang/String;
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Character"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFieldWithDefaultValue(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z
    .locals 6
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->getEmptyModel(Lorg/litepal/crud/DataSupport;)Lorg/litepal/crud/DataSupport;

    move-result-object v2

    .line 968
    .local v2, "emptyModel":Lorg/litepal/crud/DataSupport;
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    .line 969
    .local v4, "realReturn":Ljava/lang/Object;
    invoke-virtual {p0, v2, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 970
    .local v1, "defaultReturn":Ljava/lang/Object;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 971
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 972
    .local v3, "realFieldValue":Ljava/lang/String;
    invoke-virtual {p0, v2, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "defaultFieldValue":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 975
    .end local v0    # "defaultFieldValue":Ljava/lang/String;
    .end local v3    # "realFieldValue":Ljava/lang/String;
    :goto_0
    return v5

    :cond_0
    if-ne v4, v1, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isPrimitiveBooleanType(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 883
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 884
    .local v0, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "boolean"

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    const/4 v1, 0x1

    .line 887
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSaving()Z
    .locals 2

    .prologue
    .line 942
    const-class v0, Lorg/litepal/crud/SaveHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUpdating()Z
    .locals 2

    .prologue
    .line 932
    const-class v0, Lorg/litepal/crud/UpdateHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeGetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 987
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "fieldName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->isPrimitiveBooleanType(Ljava/lang/reflect/Field;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 989
    const-string v2, "^is[A-Z]{1}.*$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 990
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 992
    :cond_0
    const-string v1, "is"

    .line 996
    .local v1, "getterMethodPrefix":Ljava/lang/String;
    :goto_0
    const-string v2, "^[a-z]{1}[A-Z]{1}.*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 999
    :goto_1
    return-object v2

    .line 994
    .end local v1    # "getterMethodPrefix":Ljava/lang/String;
    :cond_1
    const-string v1, "get"

    .restart local v1    # "getterMethodPrefix":Ljava/lang/String;
    goto :goto_0

    .line 999
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private makeSetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 5
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 1012
    const-string v1, "set"

    .line 1013
    .local v1, "setterMethodPrefix":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->isPrimitiveBooleanType(Ljava/lang/reflect/Field;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^is[A-Z]{1}.*$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1014
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1020
    .local v0, "setterMethodName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1015
    .end local v0    # "setterMethodName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "^[a-z]{1}[A-Z]{1}.*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1016
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1017
    .restart local v0    # "setterMethodName":Ljava/lang/String;
    goto :goto_0

    .line 1018
    .end local v0    # "setterMethodName":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/litepal/util/BaseUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "setterMethodName":Ljava/lang/String;
    goto :goto_0
.end method

.method private putFieldsValueDependsOnSaveOrUpdate(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "values"    # Landroid/content/ContentValues;
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
    .line 911
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;->isUpdating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->isFieldWithDefaultValue(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 913
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/DataHandler;->putContentValues(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;->isSaving()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 918
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 919
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/DataHandler;->putContentValues(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private setAssociatedModel(Lorg/litepal/crud/DataSupport;)V
    .locals 26
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 1153
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1211
    :cond_0
    return-void

    .line 1156
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_2
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/litepal/crud/model/AssociationsInfo;

    .line 1157
    .local v17, "info":Lorg/litepal/crud/model/AssociationsInfo;
    const/4 v14, 0x0

    .line 1158
    .local v14, "cursor":Landroid/database/Cursor;
    invoke-virtual/range {v17 .. v17}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v11

    .line 1159
    .local v11, "associatedClassName":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    const/16 v19, 0x1

    .line 1161
    .local v19, "isM2M":Z
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/litepal/crud/DataHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v21

    .line 1162
    .local v21, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    if-eqz v19, :cond_8

    .line 1163
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v22

    .line 1165
    .local v22, "tableName":Ljava/lang/String;
    invoke-static {v11}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1166
    .local v12, "associatedTableName":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lorg/litepal/util/DBUtility;->getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1168
    .local v18, "intermediateTableName":Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1169
    .local v20, "sql":Ljava/lang/StringBuilder;
    const-string v2, "select * from "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1170
    const-string v4, " a inner join "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1171
    const-string v4, " b on a.id = b."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1172
    const-string v4, " where b."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_id = ?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    .line 1174
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v2}, Lorg/litepal/crud/DataSupport;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 1185
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v18    # "intermediateTableName":Ljava/lang/String;
    .end local v20    # "sql":Ljava/lang/StringBuilder;
    .end local v22    # "tableName":Ljava/lang/String;
    .local v6, "cursor":Landroid/database/Cursor;
    :goto_2
    if-eqz v6, :cond_6

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1186
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 1188
    .local v7, "queryInfoCacheSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/litepal/crud/DataHandler$QueryInfoCache;>;"
    :cond_3
    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/litepal/crud/DataHandler;->createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/litepal/crud/DataSupport;

    .line 1190
    .local v3, "modelInstance":Lorg/litepal/crud/DataSupport;
    const-string v2, "id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1189
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lorg/litepal/crud/DataHandler;->giveBaseObjIdValue(Lorg/litepal/crud/DataSupport;J)V

    .line 1191
    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, v21

    invoke-virtual/range {v2 .. v7}, Lorg/litepal/crud/DataHandler;->setValueToModel(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;Landroid/util/SparseArray;)V

    .line 1192
    invoke-virtual/range {v17 .. v17}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_4

    if-eqz v19, :cond_9

    .line 1194
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1193
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    .line 1195
    .local v13, "collection":Ljava/util/Collection;
    invoke-interface {v13, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1200
    .end local v13    # "collection":Ljava/util/Collection;
    :cond_5
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1201
    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1206
    .end local v3    # "modelInstance":Lorg/litepal/crud/DataSupport;
    .end local v7    # "queryInfoCacheSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/litepal/crud/DataHandler$QueryInfoCache;>;"
    :cond_6
    if-eqz v6, :cond_2

    .line 1207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1159
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v12    # "associatedTableName":Ljava/lang/String;
    .end local v19    # "isM2M":Z
    .end local v21    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1177
    .restart local v19    # "isM2M":Z
    .restart local v21    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_8
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lorg/litepal/crud/model/AssociationsInfo;->getSelfClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1176
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/litepal/crud/DataHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1179
    .local v16, "foreignKeyColumn":Ljava/lang/String;
    invoke-static {v11}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1180
    .restart local v12    # "associatedTableName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v12}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1181
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "=?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1182
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/DataSupport;->getBaseObjId()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1183
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1180
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .end local v14    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    goto/16 :goto_2

    .line 1196
    .end local v16    # "foreignKeyColumn":Ljava/lang/String;
    .restart local v3    # "modelInstance":Lorg/litepal/crud/DataSupport;
    .restart local v7    # "queryInfoCacheSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/litepal/crud/DataHandler$QueryInfoCache;>;"
    :cond_9
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 1198
    invoke-virtual/range {v17 .. v17}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1197
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2, v3}, Lorg/litepal/crud/DataHandler;->putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 1203
    .end local v3    # "modelInstance":Lorg/litepal/crud/DataSupport;
    .end local v7    # "queryInfoCacheSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/litepal/crud/DataHandler$QueryInfoCache;>;"
    :catch_0
    move-exception v15

    .line 1204
    .end local v12    # "associatedTableName":Ljava/lang/String;
    .end local v21    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local v15, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_4
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1205
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1206
    :goto_5
    if-eqz v6, :cond_a

    .line 1207
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1209
    :cond_a
    throw v2

    .line 1205
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    move-object v6, v14

    .end local v14    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    goto :goto_5

    .line 1203
    .end local v6    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v15

    move-object v6, v14

    .end local v14    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    goto :goto_4
.end method

.method private setToModelByReflection(Ljava/lang/Object;Ljava/lang/reflect/Field;ILjava/lang/String;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "modelInstance"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "columnIndex"    # I
    .param p4, "getMethodName"    # Ljava/lang/String;
    .param p5, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1215
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1216
    .local v0, "cursorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v5, v8, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    invoke-virtual {v0, p4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1217
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, p5, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1218
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1219
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1219
    invoke-static {p1, v5, v4, v6}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1240
    .end local v4    # "value":Ljava/lang/Object;
    .end local p1    # "modelInstance":Ljava/lang/Object;
    :goto_0
    return-void

    .line 1222
    .restart local v4    # "value":Ljava/lang/Object;
    .restart local p1    # "modelInstance":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    if-ne v5, v6, :cond_4

    .line 1223
    :cond_1
    const-string v5, "0"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1224
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1238
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    :goto_1
    check-cast p1, Lorg/litepal/crud/DataSupport;

    .end local p1    # "modelInstance":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, v4}, Lorg/litepal/crud/DataHandler;->putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_0

    .line 1225
    .restart local v4    # "value":Ljava/lang/Object;
    .restart local p1    # "modelInstance":Ljava/lang/Object;
    :cond_3
    const-string v5, "1"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1226
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1228
    .local v4, "value":Ljava/lang/Boolean;
    goto :goto_1

    .local v4, "value":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_5

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Character;

    if-ne v5, v6, :cond_6

    .line 1229
    :cond_5
    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    .line 1230
    .local v4, "value":Ljava/lang/Character;
    goto :goto_1

    .local v4, "value":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/util/Date;

    if-ne v5, v6, :cond_2

    .line 1231
    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1232
    .local v2, "date":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-gtz v5, :cond_7

    .line 1233
    const/4 v4, 0x0

    .line 1234
    .restart local v4    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 1235
    .end local v4    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .local v4, "value":Ljava/util/Date;
    goto :goto_1
.end method


# virtual methods
.method protected analyzeAssociatedModels(Lorg/litepal/crud/DataSupport;Ljava/util/Collection;)V
    .locals 5
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/Collection",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p2, "associationInfos":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/litepal/crud/model/AssociationsInfo;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 340
    return-void

    .line 328
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/model/AssociationsInfo;

    .line 329
    .local v0, "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 330
    new-instance v3, Lorg/litepal/crud/Many2OneAnalyzer;

    invoke-direct {v3}, Lorg/litepal/crud/Many2OneAnalyzer;-><init>()V

    invoke-virtual {v3, p1, v0}, Lorg/litepal/crud/Many2OneAnalyzer;->analyze(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 337
    .end local v0    # "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 332
    new-instance v3, Lorg/litepal/crud/One2OneAnalyzer;

    invoke-direct {v3}, Lorg/litepal/crud/One2OneAnalyzer;-><init>()V

    invoke-virtual {v3, p1, v0}, Lorg/litepal/crud/One2OneAnalyzer;->analyze(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    goto :goto_0

    .line 333
    :cond_3
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 334
    new-instance v3, Lorg/litepal/crud/Many2ManyAnalyzer;

    invoke-direct {v3}, Lorg/litepal/crud/Many2ManyAnalyzer;-><init>()V

    invoke-virtual {v3, p1, v0}, Lorg/litepal/crud/Many2ManyAnalyzer;->analyze(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->findBestSuitConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 600
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/DataHandler;->getConstructorParams(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 601
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 603
    new-instance v2, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected findBestSuitConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 617
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 618
    .local v2, "constructors":[Ljava/lang/reflect/Constructor;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 619
    .local v4, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/reflect/Constructor<*>;>;"
    const v5, 0x7fffffff

    .line 620
    .local v5, "minKey":I
    array-length v11, v2

    move v10, v9

    :goto_0
    if-lt v10, v11, :cond_1

    .line 635
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 636
    .local v0, "bestSuitConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v0, :cond_0

    .line 637
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 639
    :cond_0
    return-object v0

    .line 620
    .end local v0    # "bestSuitConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    aget-object v1, v2, v10

    .line 621
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v3, v8

    .line 622
    .local v3, "key":I
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 623
    .local v7, "types":[Ljava/lang/Class;
    array-length v12, v7

    move v8, v9

    :goto_1
    if-lt v8, v12, :cond_4

    .line 628
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 629
    invoke-virtual {v4, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    :cond_2
    if-ge v3, v5, :cond_3

    .line 632
    move v5, v3

    .line 620
    :cond_3
    add-int/lit8 v8, v10, 0x1

    move v10, v8

    goto :goto_0

    .line 623
    :cond_4
    aget-object v6, v7, v8

    .line 624
    .local v6, "parameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v6, p1, :cond_5

    .line 625
    add-int/lit16 v3, v3, 0x2710

    .line 623
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method protected findDataSupportClass(Lorg/litepal/crud/DataSupport;)Ljava/lang/Class;
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 534
    .local v0, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_1

    const-class v1, Lorg/litepal/crud/DataSupport;

    if-ne v1, v0, :cond_0

    .line 539
    :cond_1
    if-nez v0, :cond_2

    .line 540
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 541
    const-string v3, " should be inherited from DataSupport"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 540
    invoke-direct {v1, v2}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_2
    return-object v0
.end method

.method protected getAssociatedModel(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Lorg/litepal/crud/DataSupport;
    .locals 1
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
    .line 360
    .line 361
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 360
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/DataSupport;

    return-object v0
.end method

.method protected getAssociatedModels(Lorg/litepal/crud/DataSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
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
    .line 384
    .line 385
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 384
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method protected getConstructorParams(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 655
    .local v1, "paramTypes":[Ljava/lang/Class;
    array-length v3, v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 656
    .local v2, "params":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 659
    return-object v2

    .line 657
    :cond_0
    aget-object v3, v1, v0

    invoke-direct {p0, p1, v3}, Lorg/litepal/crud/DataHandler;->getInitParamValue(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getEmptyModel(Lorg/litepal/crud/DataSupport;)Lorg/litepal/crud/DataSupport;
    .locals 6
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;

    .prologue
    .line 398
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/DataSupport;

    if-eqz v3, :cond_0

    .line 399
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/DataSupport;

    .line 406
    :goto_0
    return-object v3

    .line 401
    :cond_0
    const/4 v0, 0x0

    .line 403
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 405
    .local v2, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/litepal/crud/DataSupport;

    iput-object v3, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/DataSupport;

    .line 406
    iget-object v3, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/DataSupport;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 407
    .end local v2    # "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 408
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "can not find a class named "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-direct {v3, v4}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 411
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v3, Lorg/litepal/exceptions/DataSupportException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " needs a default constructor."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 412
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getForeignKeyAssociations(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "isEager"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    if-eqz p2, :cond_0

    .line 743
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->analyzeAssociations(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    .line 746
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getIntermediateTableName(Lorg/litepal/crud/DataSupport;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "associatedTableName"    # Ljava/lang/String;

    .prologue
    .line 571
    invoke-virtual {p1}, Lorg/litepal/crud/DataSupport;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/litepal/util/DBUtility;->getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 584
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs getWhereArgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "conditions"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 447
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-virtual {p0, v1}, Lorg/litepal/crud/DataHandler;->isAffectAllLines([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-object v0

    .line 450
    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v2, :cond_0

    .line 451
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 452
    .local v0, "whereArgs":[Ljava/lang/String;
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected varargs getWhereClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "conditions"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 427
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lorg/litepal/crud/DataHandler;->isAffectAllLines([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-object v0

    .line 430
    :cond_1
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    .line 431
    aget-object v0, p1, v2

    goto :goto_0
.end method

.method protected getWhereOfIdsWithOr(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 482
    .local p1, "ids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 483
    .local v3, "whereClause":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 484
    .local v2, "needOr":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 492
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 484
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 485
    .local v0, "id":J
    if-eqz v2, :cond_1

    .line 486
    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    :cond_1
    const/4 v2, 0x1

    .line 489
    const-string v4, "id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected varargs getWhereOfIdsWithOr([J)Ljava/lang/String;
    .locals 7
    .param p1, "ids"    # [J

    .prologue
    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    .local v3, "whereClause":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 505
    .local v2, "needOr":Z
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 513
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 505
    :cond_0
    aget-wide v0, p1, v4

    .line 506
    .local v0, "id":J
    if-eqz v2, :cond_1

    .line 507
    const-string v6, " or "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_1
    const/4 v2, 0x1

    .line 510
    const-string v6, "id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 505
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected giveBaseObjIdValue(Lorg/litepal/crud/DataSupport;J)V
    .locals 4
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 201
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 202
    const-string v0, "baseObjId"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-class v2, Lorg/litepal/crud/DataSupport;

    invoke-static {p1, v0, v1, v2}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 204
    :cond_0
    return-void
.end method

.method protected varargs isAffectAllLines([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "conditions"    # [Ljava/lang/Object;

    .prologue
    .line 467
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x1

    .line 470
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected mathQuery(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 14
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "conditions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 169
    .local p4, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static/range {p3 .. p3}, Lorg/litepal/util/BaseUtility;->checkConditionsCorrect([Ljava/lang/String;)V

    .line 170
    const/4 v9, 0x0

    .line 171
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 173
    .local v13, "result":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/litepal/crud/DataHandler;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    move-object/from16 v0, p3

    invoke-virtual {p0, v0}, Lorg/litepal/crud/DataHandler;->getWhereArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object/from16 v3, p2

    .line 173
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 175
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 177
    .local v10, "cursorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p4

    invoke-direct {p0, v0}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v10, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 178
    .local v12, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v12, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 183
    .end local v10    # "cursorClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "method":Ljava/lang/reflect/Method;
    .end local v13    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v9, :cond_1

    .line 184
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_1
    return-object v13

    .line 180
    .restart local v13    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v11

    .line 181
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 183
    if-eqz v9, :cond_2

    .line 184
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 186
    :cond_2
    throw v1
.end method

.method protected putContentValues(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "values"    # Landroid/content/ContentValues;
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
    .line 254
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    .line 255
    .local v1, "fieldValue":Ljava/lang/Object;
    const-string v4, "java.util.Date"

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    move-object v0, v1

    .line 256
    check-cast v0, Ljava/util/Date;

    .line 257
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 259
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "fieldValue":Ljava/lang/Object;
    :cond_0
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 260
    .local v3, "parameters":[Ljava/lang/Object;
    invoke-direct {p0, p2, v1, v3}, Lorg/litepal/crud/DataHandler;->getParameterTypes(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 261
    .local v2, "parameterTypes":[Ljava/lang/Class;
    const-string v4, "put"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p3, v4, v3, v5, v2}, Lorg/litepal/crud/DynamicExecutor;->send(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 262
    return-void
.end method

.method protected putFieldsValue(Lorg/litepal/crud/DataSupport;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 3
    .param p1, "baseObj"    # Lorg/litepal/crud/DataSupport;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/DataSupport;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
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
    .line 225
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 230
    return-void

    .line 225
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 226
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    invoke-direct {p0, p1, v0, p3}, Lorg/litepal/crud/DataHandler;->putFieldsValueDependsOnSaveOrUpdate(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method protected putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 6
    .param p1, "dataSupport"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "parameter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 311
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->shouldGetOrSet(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    invoke-direct {p0, p2}, Lorg/litepal/crud/DataHandler;->makeSetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "setMethodName":Ljava/lang/String;
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p3, v1, v5

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    .line 313
    invoke-static {p1, v0, v1, v2, v3}, Lorg/litepal/crud/DynamicExecutor;->send(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 316
    .end local v0    # "setMethodName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "modelClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p9, "foreignKeyAssociations":Ljava/util/List;, "Ljava/util/List<Lorg/litepal/crud/model/AssociationsInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v14, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v13, 0x0

    .line 121
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/litepal/crud/DataHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 122
    .local v16, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p1}, Lorg/litepal/crud/DataHandler;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "tableName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lorg/litepal/crud/DataHandler;->getCustomizedColumns([Ljava/lang/String;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, "customizedColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v11

    .line 126
    .end local v13    # "cursor":Landroid/database/Cursor;
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 129
    .local v12, "queryInfoCacheSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/litepal/crud/DataHandler$QueryInfoCache;>;"
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/litepal/crud/DataHandler;->createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .line 130
    .local v8, "modelInstance":Ljava/lang/Object;, "TT;"
    move-object v0, v8

    check-cast v0, Lorg/litepal/crud/DataSupport;

    move-object v4, v0

    .line 131
    const-string v7, "id"

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 130
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Lorg/litepal/crud/DataHandler;->giveBaseObjIdValue(Lorg/litepal/crud/DataSupport;J)V

    move-object/from16 v7, p0

    move-object/from16 v9, v16

    move-object/from16 v10, p9

    .line 132
    invoke-virtual/range {v7 .. v12}, Lorg/litepal/crud/DataHandler;->setValueToModel(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;Landroid/util/SparseArray;)V

    .line 133
    if-eqz p9, :cond_1

    .line 134
    move-object v0, v8

    check-cast v0, Lorg/litepal/crud/DataSupport;

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/litepal/crud/DataHandler;->setAssociatedModel(Lorg/litepal/crud/DataSupport;)V

    .line 136
    :cond_1
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 138
    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v8    # "modelInstance":Ljava/lang/Object;, "TT;"
    .end local v12    # "queryInfoCacheSparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/litepal/crud/DataHandler$QueryInfoCache;>;"
    :cond_2
    if-eqz v11, :cond_3

    .line 146
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_3
    return-object v14

    .line 141
    .end local v5    # "tableName":Ljava/lang/String;
    .end local v6    # "customizedColumns":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v16    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v15

    move-object v11, v13

    .line 142
    .end local v13    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .local v15, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    new-instance v4, Lorg/litepal/exceptions/DataSupportException;

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/litepal/exceptions/DataSupportException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    .end local v15    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 145
    :goto_1
    if-eqz v11, :cond_4

    .line 146
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_4
    throw v4

    .line 144
    .end local v11    # "cursor":Landroid/database/Cursor;
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    move-object v11, v13

    .end local v13    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    goto :goto_1

    .line 141
    .restart local v5    # "tableName":Ljava/lang/String;
    .restart local v6    # "customizedColumns":[Ljava/lang/String;
    .restart local v16    # "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :catch_1
    move-exception v15

    goto :goto_0
.end method

.method protected setValueToModel(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;Landroid/util/SparseArray;)V
    .locals 19
    .param p1, "modelInstance"    # Ljava/lang/Object;
    .param p4, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/litepal/crud/DataHandler$QueryInfoCache;",
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
    .line 687
    .local p2, "supportedFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .local p3, "foreignKeyAssociations":Ljava/util/List;, "Ljava/util/List<Lorg/litepal/crud/model/AssociationsInfo;>;"
    .local p5, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lorg/litepal/crud/DataHandler$QueryInfoCache;>;"
    invoke-virtual/range {p5 .. p5}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 688
    .local v13, "cacheSize":I
    if-lez v13, :cond_4

    .line 689
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    if-lt v0, v13, :cond_3

    .line 709
    .end local v17    # "i":I
    :cond_0
    if-eqz p3, :cond_2

    .line 710
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    .line 730
    :cond_2
    return-void

    .line 690
    .restart local v17    # "i":I
    :cond_3
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 691
    .local v5, "columnIndex":I
    move-object/from16 v0, p5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/litepal/crud/DataHandler$QueryInfoCache;

    .line 692
    .local v12, "cache":Lorg/litepal/crud/DataHandler$QueryInfoCache;
    iget-object v4, v12, Lorg/litepal/crud/DataHandler$QueryInfoCache;->field:Ljava/lang/reflect/Field;

    iget-object v6, v12, Lorg/litepal/crud/DataHandler$QueryInfoCache;->getMethodName:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/litepal/crud/DataHandler;->setToModelByReflection(Ljava/lang/Object;Ljava/lang/reflect/Field;ILjava/lang/String;Landroid/database/Cursor;)V

    .line 689
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 695
    .end local v5    # "columnIndex":I
    .end local v12    # "cache":Lorg/litepal/crud/DataHandler$QueryInfoCache;
    .end local v17    # "i":I
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 696
    .local v4, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v6

    .line 697
    .local v6, "getMethodName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v14, "id"

    .line 698
    .local v14, "columnName":Ljava/lang/String;
    :goto_3
    invoke-static {v14}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 699
    .restart local v5    # "columnIndex":I
    const/4 v2, -0x1

    if-eq v5, v2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p4

    .line 700
    invoke-direct/range {v2 .. v7}, Lorg/litepal/crud/DataHandler;->setToModelByReflection(Ljava/lang/Object;Ljava/lang/reflect/Field;ILjava/lang/String;Landroid/database/Cursor;)V

    .line 701
    new-instance v12, Lorg/litepal/crud/DataHandler$QueryInfoCache;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/litepal/crud/DataHandler$QueryInfoCache;-><init>(Lorg/litepal/crud/DataHandler;)V

    .line 702
    .restart local v12    # "cache":Lorg/litepal/crud/DataHandler$QueryInfoCache;
    iput-object v6, v12, Lorg/litepal/crud/DataHandler$QueryInfoCache;->getMethodName:Ljava/lang/String;

    .line 703
    iput-object v4, v12, Lorg/litepal/crud/DataHandler$QueryInfoCache;->field:Ljava/lang/reflect/Field;

    .line 704
    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 697
    .end local v5    # "columnIndex":I
    .end local v12    # "cache":Lorg/litepal/crud/DataHandler$QueryInfoCache;
    .end local v14    # "columnName":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 710
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "getMethodName":Ljava/lang/String;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/litepal/crud/model/AssociationsInfo;

    .line 712
    .local v11, "associationInfo":Lorg/litepal/crud/model/AssociationsInfo;
    invoke-virtual {v11}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 711
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/litepal/crud/DataHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 713
    .local v16, "foreignKeyColumn":Ljava/lang/String;
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 714
    .restart local v5    # "columnIndex":I
    const/4 v2, -0x1

    if-eq v5, v2, :cond_1

    .line 715
    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 718
    .local v8, "associatedClassId":J
    :try_start_0
    invoke-virtual {v11}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 717
    invoke-static {v2, v8, v9}, Lorg/litepal/crud/DataSupport;->find(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/litepal/crud/DataSupport;

    .line 720
    .local v10, "associatedObj":Lorg/litepal/crud/DataSupport;
    if-eqz v10, :cond_1

    .line 721
    move-object/from16 v0, p1

    check-cast v0, Lorg/litepal/crud/DataSupport;

    move-object v2, v0

    .line 722
    invoke-virtual {v11}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v7

    .line 721
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v10}, Lorg/litepal/crud/DataHandler;->putSetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 724
    .end local v10    # "associatedObj":Lorg/litepal/crud/DataSupport;
    :catch_0
    move-exception v15

    .line 725
    .local v15, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v15}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method protected shouldGetOrSet(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p1, "dataSupport"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 558
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected takeGetMethodValueByField(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "dataSupport"    # Lorg/litepal/crud/DataSupport;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 283
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->shouldGetOrSet(Lorg/litepal/crud/DataSupport;Ljava/lang/reflect/Field;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 284
    invoke-direct {p0, p2}, Lorg/litepal/crud/DataHandler;->makeGetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "getMethodName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, v1}, Lorg/litepal/crud/DynamicExecutor;->send(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 288
    .end local v0    # "getMethodName":Ljava/lang/String;
    :cond_0
    return-object v1
.end method
