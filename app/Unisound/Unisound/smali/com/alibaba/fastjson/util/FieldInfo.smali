.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final field:Ljava/lang/reflect/Field;

.field private final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final fieldType:Ljava/lang/reflect/Type;

.field private getOnly:Z

.field private final method:Ljava/lang/reflect/Method;

.field private final name:Ljava/lang/String;

.field private ordinal:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 25
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 29
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 31
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 32
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 34
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 35
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 37
    if-eqz p5, :cond_0

    .line 38
    invoke-static {p5}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 40
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v4, 0x0

    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;II)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p4, "ordinal"    # I
    .param p5, "serialzeFeatures"    # I

    .prologue
    const/4 v4, 0x0

    .line 47
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;II)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 51
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;II)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "II)V"
        }
    .end annotation

    .prologue
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 25
    iput-boolean v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 56
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 58
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 59
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 61
    if-eqz p2, :cond_0

    .line 62
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 65
    :cond_0
    if-eqz p3, :cond_1

    .line 66
    invoke-static {p3}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 71
    :cond_1
    if-eqz p2, :cond_3

    .line 72
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    if-ne v4, v6, :cond_2

    .line 73
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v0, v4, v5

    .line 74
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v1, v4, v5

    .line 80
    .local v1, "fieldType":Ljava/lang/reflect/Type;
    :goto_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 87
    :goto_1
    if-eqz p4, :cond_4

    const-class v4, Ljava/lang/Object;

    if-ne v0, v4, :cond_4

    instance-of v4, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_4

    move-object v3, v1

    .line 88
    check-cast v3, Ljava/lang/reflect/TypeVariable;

    .line 89
    .local v3, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p4, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 90
    .local v2, "genericFieldType":Ljava/lang/reflect/Type;
    if-eqz v2, :cond_4

    .line 91
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 92
    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 109
    .end local v3    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :goto_2
    return-void

    .line 76
    .end local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "fieldType":Ljava/lang/reflect/Type;
    .end local v2    # "genericFieldType":Ljava/lang/reflect/Type;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 77
    .restart local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 78
    .restart local v1    # "fieldType":Ljava/lang/reflect/Type;
    iput-boolean v6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    goto :goto_0

    .line 82
    .end local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "fieldType":Ljava/lang/reflect/Type;
    :cond_3
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 83
    .restart local v0    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 84
    .restart local v1    # "fieldType":Ljava/lang/reflect/Type;
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    goto :goto_1

    .line 97
    :cond_4
    invoke-static {p4, p5, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 99
    .restart local v2    # "genericFieldType":Ljava/lang/reflect/Type;
    if-eq v2, v1, :cond_5

    .line 100
    instance-of v4, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_6

    .line 101
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    :cond_5
    :goto_3
    iput-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 108
    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    goto :goto_2

    .line 102
    :cond_6
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_5

    .line 103
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 19
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object/from16 v8, p2

    .line 173
    :goto_0
    return-object v8

    .line 116
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v9, p2

    .line 117
    check-cast v9, Ljava/lang/reflect/GenericArrayType;

    .line 118
    .local v9, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v9}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 119
    .local v5, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 120
    .local v6, "componentTypeX":Ljava/lang/reflect/Type;
    if-eq v5, v6, :cond_2

    .line 121
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v17

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 122
    .local v8, "fieldTypeX":Ljava/lang/reflect/Type;
    goto :goto_0

    .end local v8    # "fieldTypeX":Ljava/lang/reflect/Type;
    :cond_2
    move-object/from16 v8, p2

    .line 125
    goto :goto_0

    .line 128
    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v6    # "componentTypeX":Ljava/lang/reflect/Type;
    .end local v9    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v8, p2

    .line 129
    goto :goto_0

    .line 132
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 133
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 134
    .local v12, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v13

    .local v13, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, p2

    .line 135
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 137
    .local v16, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_6

    .line 138
    invoke-virtual {v13}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    aget-object v17, v17, v10

    invoke-interface/range {v17 .. v17}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 139
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v17

    aget-object p2, v17, v10

    move-object/from16 v8, p2

    .line 140
    goto :goto_0

    .line 137
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 145
    .end local v10    # "i":I
    .end local v12    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v13    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v17, v0

    if-eqz v17, :cond_a

    move-object/from16 v14, p2

    .line 146
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .line 148
    .local v14, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 149
    .local v3, "arguments":[Ljava/lang/reflect/Type;
    const/4 v4, 0x0

    .line 150
    .local v4, "changed":Z
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 151
    aget-object v7, v3, v10

    .line 152
    .local v7, "feildTypeArguement":Ljava/lang/reflect/Type;
    instance-of v0, v7, Ljava/lang/reflect/TypeVariable;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v16, v7

    .line 153
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 155
    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v15, p1

    .line 156
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 157
    .local v15, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_8

    .line 158
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    aget-object v17, v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 159
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v17

    aget-object v17, v17, v11

    aput-object v17, v3, v10

    .line 160
    const/4 v4, 0x1

    .line 157
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 150
    .end local v11    # "j":I
    .end local v15    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 166
    .end local v7    # "feildTypeArguement":Ljava/lang/reflect/Type;
    :cond_9
    if-eqz v4, :cond_a

    .line 167
    new-instance p2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v17

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v3, v1, v2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v8, p2

    .line 169
    goto/16 :goto_0

    .end local v3    # "arguments":[Ljava/lang/reflect/Type;
    .end local v4    # "changed":Z
    .end local v10    # "i":I
    .end local v14    # "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    :cond_a
    move-object/from16 v8, p2

    .line 173
    goto/16 :goto_0
.end method

.method public static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v6, 0x0

    .line 177
    const/4 v4, 0x0

    .line 178
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 180
    .local v0, "gd":Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 181
    if-nez v4, :cond_2

    .line 197
    :cond_1
    :goto_0
    return-object v6

    .line 184
    :cond_2
    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_4

    move-object v2, v4

    .line 185
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 186
    .local v2, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v7, v0, :cond_4

    .line 187
    invoke-interface {v0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 188
    .local v3, "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 189
    .local v5, "types":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 190
    aget-object v7, v3, v1

    if-ne v7, p1, :cond_3

    aget-object v6, v5, v1

    goto :goto_0

    .line 189
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    .end local v1    # "i":I
    .end local v2    # "ptype":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "types":[Ljava/lang/reflect/Type;
    :cond_4
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 196
    if-nez v4, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 2
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 242
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-ge v0, v1, :cond_0

    .line 243
    const/4 v0, -0x1

    .line 250
    :goto_0
    return v0

    .line 246
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-le v0, v1, :cond_1

    .line 247
    const/4 v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    return v0
.end method

.method public gerQualifiedName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    .line 222
    .local v0, "member":Ljava/lang/reflect/Member;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 255
    .local v0, "annotation":Ljava/lang/annotation/Annotation;, "TT;"
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 259
    :cond_0
    if-nez v0, :cond_1

    .line 260
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 265
    :cond_1
    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getFieldClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 229
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isGetOnly()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
