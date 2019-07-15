.class Lcom/alibaba/fastjson/parser/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final creatorConstructorParameters:[Ljava/lang/String;

.field final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field final defaultConstructorParameterSize:I

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field ordered:Z

.field public final parserFeatures:I

.field final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field final supportBeanToArray:Z

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    .line 48
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 49
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 50
    iput-object p4, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 51
    iput-object p5, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 52
    iput-object p7, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    const/4 p3, 0x0

    if-eqz p8, :cond_0

    .line 54
    array-length v1, p8

    array-length v2, p5

    if-ne v1, v2, :cond_0

    .line 56
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    goto :goto_0

    .line 58
    :cond_0
    iput-object p8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->creatorConstructorParameters:[Ljava/lang/String;

    :goto_0
    if-eqz p7, :cond_3

    .line 63
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object p8

    .line 64
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p8

    :goto_1
    iput-object p8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 66
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeKey()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p8

    if-lez p8, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, p3

    :goto_2
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    .line 69
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p1

    array-length p3, p1

    move p8, v0

    move v1, p8

    :goto_3
    if-ge p8, p3, :cond_4

    aget-object v2, p1, p8

    .line 70
    iget v2, v2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v1, v2

    add-int/lit8 p8, p8, 0x1

    goto :goto_3

    .line 73
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->typeKey:Ljava/lang/String;

    move v1, v0

    .line 76
    :cond_4
    iput v1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->parserFeatures:I

    if-eqz p7, :cond_6

    .line 80
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object p1

    array-length p3, p1

    move p7, v0

    move p8, p7

    :goto_4
    if-ge p7, p3, :cond_7

    aget-object v1, p1, p7

    .line 81
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v1, v2, :cond_5

    const/4 p8, 0x1

    :cond_5
    add-int/lit8 p7, p7, 0x1

    goto :goto_4

    :cond_6
    move p8, v0

    .line 86
    :cond_7
    iput-boolean p8, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->supportBeanToArray:Z

    .line 88
    invoke-direct {p0, p5, p6}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object p1

    .line 89
    invoke-static {p5, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    move-object p1, p5

    :cond_8
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz p2, :cond_9

    .line 92
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    goto :goto_5

    :cond_9
    if-eqz p4, :cond_a

    .line 94
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    :cond_a
    :goto_5
    iput v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->defaultConstructorParameterSize:I

    return-void
.end method

.method static addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Z)Z"
        }
    .end annotation

    if-nez p2, :cond_2

    .line 183
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 184
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 185
    iget-object v3, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 186
    iget-boolean v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    return v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/parser/JavaBeanInfo;
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/parser/JavaBeanInfo;"
        }
    .end annotation

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v13, p3

    move-object/from16 v10, p7

    .line 210
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 211
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 213
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 215
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->isKotlin(Ljava/lang/Class;)Z

    move-result v1

    and-int/lit16 v2, v12, 0x400

    const/16 v17, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_4

    .line 217
    array-length v3, v0

    if-eq v3, v7, :cond_0

    if-nez v1, :cond_4

    .line 219
    :cond_0
    :try_start_0
    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v11, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object/from16 v3, v17

    :goto_0
    if-nez v3, :cond_3

    .line 225
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_3

    and-int/lit8 v4, v12, 0x8

    if-nez v4, :cond_3

    .line 226
    array-length v4, v0

    move v5, v6

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    move-object/from16 v19, v3

    .line 227
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    move/from16 v20, v4

    .line 228
    array-length v4, v3

    if-ne v4, v7, :cond_1

    const/16 v18, 0x0

    aget-object v3, v3, v18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_1
    const/16 v18, 0x0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v18

    move-object/from16 v3, v19

    move/from16 v4, v20

    goto :goto_1

    :cond_3
    move-object/from16 v19, v3

    move/from16 v18, v6

    move-object/from16 v6, v19

    goto :goto_2

    :cond_4
    move/from16 v18, v6

    move-object/from16 v6, v17

    :goto_2
    const/16 v19, 0x0

    if-eqz v13, :cond_5

    move-object/from16 v10, v17

    move-object v15, v10

    goto/16 :goto_6

    .line 245
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v11

    move-object/from16 v5, v17

    :goto_3
    if-eqz v4, :cond_b

    .line 247
    const-class v7, Ljava/lang/Object;

    if-eq v4, v7, :cond_b

    .line 248
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    move-object/from16 v22, v5

    .line 249
    array-length v5, v7

    move/from16 v10, v18

    :goto_4
    if-ge v10, v5, :cond_a

    move/from16 v24, v5

    aget-object v5, v7, v10

    move-object/from16 v25, v7

    .line 250
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v7

    and-int/lit8 v20, v7, 0x8

    if-eqz v20, :cond_7

    .line 253
    const-class v7, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_9

    if-eqz v22, :cond_6

    .line 255
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "multi-json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v22, v5

    goto :goto_5

    :cond_7
    and-int/lit8 v20, v7, 0x2

    if-nez v20, :cond_9

    and-int/lit16 v15, v7, 0x100

    if-nez v15, :cond_9

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_8

    goto :goto_5

    .line 267
    :cond_8
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v24

    move-object/from16 v7, v25

    goto :goto_4

    .line 247
    :cond_a
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v5, v22

    const/4 v7, 0x1

    move-object/from16 v10, p7

    goto :goto_3

    :cond_b
    move-object/from16 v22, v5

    .line 271
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Method;

    .line 272
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v10, v4

    move-object/from16 v15, v22

    .line 275
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 277
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_d

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    move/from16 v2, v18

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v2, 0x1

    :goto_8
    if-eqz v6, :cond_f

    if-eqz v2, :cond_e

    goto :goto_9

    :cond_e
    move-object/from16 v22, v7

    move-object/from16 v30, v10

    move-object/from16 v40, v15

    move-object/from16 v24, v17

    const/4 v15, 0x1

    move-object v7, v6

    move-object v10, v8

    move/from16 v8, v18

    goto/16 :goto_21

    .line 281
    :cond_f
    :goto_9
    array-length v3, v0

    move/from16 v4, v18

    :goto_a
    if-ge v4, v3, :cond_11

    aget-object v5, v0, v4

    move/from16 v27, v3

    .line 282
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/annotation/JSONCreator;

    if-eqz v3, :cond_10

    goto :goto_b

    :cond_10
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v27

    goto :goto_a

    :cond_11
    move-object/from16 v5, v17

    :goto_b
    if-eqz v5, :cond_1a

    .line 294
    invoke-static {v11, v5, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 296
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    if-eqz p6, :cond_12

    .line 298
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object/from16 v19, v0

    goto :goto_c

    :cond_12
    move-object/from16 v19, v4

    .line 301
    :goto_c
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v20

    move/from16 v3, v18

    .line 302
    :goto_d
    array-length v0, v4

    if-ge v3, v0, :cond_17

    .line 303
    aget-object v0, v20, v3

    .line 305
    array-length v1, v0

    move/from16 v2, v18

    :goto_e
    if-ge v2, v1, :cond_14

    move/from16 v28, v1

    aget-object v1, v0, v2

    move-object/from16 v29, v0

    .line 306
    instance-of v0, v1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_13

    .line 307
    move-object v0, v1

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_f

    :cond_13
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v28

    move-object/from16 v0, v29

    goto :goto_e

    :cond_14
    move-object/from16 v0, v17

    :goto_f
    if-nez v0, :cond_15

    .line 312
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_15
    aget-object v22, v4, v3

    .line 316
    aget-object v24, v19, v3

    .line 317
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1, v7, v8}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 320
    invoke-static {v11, v2, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 323
    :cond_16
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v25

    .line 324
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v27

    .line 325
    new-instance v1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    move-object v0, v1

    move-object/from16 v30, v10

    move-object v10, v1

    move-object/from16 v1, v28

    move-object/from16 v28, v2

    move-object v2, v11

    move/from16 v29, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v4

    move-object/from16 v4, v24

    move-object/from16 v24, v5

    move-object/from16 v5, v28

    move-object/from16 v31, v6

    move-object/from16 v32, v8

    move/from16 v8, v18

    move/from16 v6, v25

    move-object/from16 v33, v7

    move/from16 v7, v27

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 332
    invoke-static {v9, v10, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v3, v29, 0x1

    move-object/from16 v4, v22

    move-object/from16 v5, v24

    move-object/from16 v10, v30

    move-object/from16 v6, v31

    move-object/from16 v8, v32

    move-object/from16 v7, v33

    goto/16 :goto_d

    :cond_17
    move-object/from16 v24, v5

    move-object/from16 v31, v6

    move-object/from16 v33, v7

    move-object/from16 v32, v8

    move-object/from16 v30, v10

    move/from16 v8, v18

    .line 335
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 336
    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 338
    array-length v1, v0

    new-array v1, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 339
    array-length v2, v0

    invoke-static {v0, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_18

    .line 342
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 344
    :cond_18
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    move v2, v8

    .line 345
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_19

    .line 346
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_19
    move-object/from16 v19, v1

    move-object/from16 v40, v15

    move-object/from16 v7, v31

    move-object/from16 v10, v32

    move-object/from16 v22, v33

    const/4 v15, 0x1

    goto/16 :goto_21

    :cond_1a
    move-object/from16 v24, v5

    move-object/from16 v31, v6

    move-object/from16 v33, v7

    move-object/from16 v32, v8

    move-object/from16 v30, v10

    move/from16 v8, v18

    if-eqz v15, :cond_23

    .line 350
    invoke-static {v11, v15, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 352
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 354
    array-length v0, v10

    if-lez v0, :cond_22

    if-eqz p6, :cond_1b

    .line 356
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object v12, v0

    goto :goto_11

    :cond_1b
    move-object v12, v10

    .line 359
    :goto_11
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v16

    move v7, v8

    .line 360
    :goto_12
    array-length v0, v10

    if-ge v7, v0, :cond_1f

    .line 361
    aget-object v0, v16, v7

    .line 363
    array-length v1, v0

    move v2, v8

    :goto_13
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 364
    instance-of v4, v3, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v4, :cond_1c

    .line 365
    move-object v0, v3

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_14

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    move-object/from16 v0, v17

    :goto_14
    if-nez v0, :cond_1e

    .line 370
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "illegal json creator"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_1e
    aget-object v3, v10, v7

    .line 374
    aget-object v4, v12, v7

    .line 375
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v32

    move-object/from16 v5, v33

    invoke-static {v11, v1, v5, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v18

    .line 376
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 377
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v21

    .line 378
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    move-object v0, v2

    move-object v8, v2

    move-object v2, v11

    move-object/from16 v34, v10

    move-object v10, v5

    move-object/from16 v5, v18

    move-object/from16 v35, v10

    move-object v10, v6

    move/from16 v6, v20

    move/from16 v18, v7

    move/from16 v7, v21

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 385
    invoke-static {v9, v8, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v7, v18, 0x1

    move-object/from16 v32, v10

    move-object/from16 v10, v34

    move-object/from16 v33, v35

    const/4 v8, 0x0

    goto :goto_12

    .line 388
    :cond_1f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 389
    invoke-interface {v9, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 391
    array-length v0, v5

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 392
    array-length v1, v5

    const/4 v2, 0x0

    invoke-static {v5, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 395
    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move-object v6, v5

    goto :goto_15

    :cond_20
    move-object v6, v0

    :goto_15
    if-eqz p4, :cond_21

    .line 400
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_16

    :cond_21
    move-object/from16 v7, v17

    .line 402
    :goto_16
    new-instance v9, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v9

    move-object v1, v11

    move-object v4, v15

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    return-object v9

    :cond_22
    move-object/from16 v10, v32

    move-object/from16 v40, v15

    move-object/from16 v22, v33

    goto/16 :goto_1f

    :cond_23
    move-object/from16 v10, v32

    move-object/from16 v35, v33

    if-nez v2, :cond_31

    if-eqz v1, :cond_30

    .line 407
    array-length v1, v0

    if-lez v1, :cond_30

    .line 408
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getKoltinConstructorParameters(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2f

    .line 411
    array-length v1, v0

    move-object/from16 v7, v24

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_26

    aget-object v3, v0, v2

    .line 412
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 413
    array-length v5, v4

    if-lez v5, :cond_24

    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-object v5, v4, v5

    .line 414
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "kotlin.jvm.internal.DefaultConstructorMarker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    goto :goto_18

    :cond_24
    if-eqz v7, :cond_25

    .line 419
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    array-length v4, v4

    if-lt v5, v4, :cond_25

    goto :goto_18

    :cond_25
    move-object v7, v3

    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_26
    const/4 v6, 0x1

    .line 426
    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 427
    invoke-static {v11, v7, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 429
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    if-eqz p6, :cond_27

    .line 431
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_19

    :cond_27
    move-object/from16 v18, v5

    .line 434
    :goto_19
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v19

    const/4 v4, 0x0

    .line 435
    :goto_1a
    array-length v0, v5

    if-ge v4, v0, :cond_2d

    .line 436
    aget-object v0, v8, v4

    .line 438
    aget-object v1, v19, v4

    .line 440
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_29

    aget-object v6, v1, v3

    move-object/from16 v36, v1

    .line 441
    instance-of v1, v6, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v1, :cond_28

    .line 442
    move-object v1, v6

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_1c

    :cond_28
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v36

    const/4 v6, 0x1

    goto :goto_1b

    :cond_29
    move-object/from16 v1, v17

    .line 447
    :goto_1c
    aget-object v3, v5, v4

    .line 448
    aget-object v6, v18, v4

    move-object/from16 v37, v5

    move-object/from16 v2, v35

    .line 449
    invoke-static {v11, v0, v2, v10}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_2a

    if-nez v1, :cond_2a

    .line 452
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    :cond_2a
    if-eqz v1, :cond_2c

    .line 457
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    move-object/from16 v38, v0

    .line 458
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    .line 460
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v21

    if-eqz v21, :cond_2b

    move-object/from16 v38, v1

    :cond_2b
    move/from16 v21, v0

    move-object/from16 v1, v38

    goto :goto_1d

    :cond_2c
    move-object/from16 v38, v0

    move-object/from16 v1, v38

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 469
    :goto_1d
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v39, v0

    move-object/from16 v22, v2

    move-object v2, v11

    move/from16 v24, v4

    move-object v4, v6

    move-object/from16 v25, v37

    move-object/from16 v40, v15

    const/4 v15, 0x1

    move/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v21

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 476
    invoke-static {v9, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    add-int/lit8 v4, v24, 0x1

    move v6, v15

    move-object/from16 v7, v20

    move-object/from16 v35, v22

    move-object/from16 v5, v25

    move-object/from16 v15, v40

    goto/16 :goto_1a

    :cond_2d
    move-object/from16 v20, v7

    move-object/from16 v40, v15

    move-object/from16 v22, v35

    move v15, v6

    .line 479
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 480
    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 482
    array-length v1, v0

    new-array v1, v1, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 483
    array-length v2, v0

    const/4 v8, 0x0

    invoke-static {v0, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 486
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    move v2, v8

    .line 487
    :goto_1e
    array-length v3, v0

    if-ge v2, v3, :cond_2e

    .line 488
    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2e
    move-object/from16 v19, v1

    move-object/from16 v24, v20

    goto :goto_20

    .line 496
    :cond_2f
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_30
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default constructor not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    move-object/from16 v40, v15

    move-object/from16 v22, v35

    const/4 v8, 0x0

    :goto_1f
    const/4 v15, 0x1

    :goto_20
    move-object/from16 v7, v31

    :goto_21
    if-eqz v7, :cond_32

    .line 505
    invoke-static {v11, v7, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :cond_32
    const/4 v5, 0x4

    if-nez v13, :cond_4a

    move-object/from16 v4, v30

    .line 509
    array-length v3, v4

    move v2, v8

    :goto_22
    if-ge v2, v3, :cond_49

    aget-object v1, v4, v2

    .line 511
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_34

    :cond_33
    :goto_23
    move/from16 v27, v2

    move/from16 v28, v3

    move-object/from16 v45, v4

    move-object/from16 v30, v7

    move-object v15, v9

    move-object/from16 v20, v10

    move-object/from16 v46, v22

    goto/16 :goto_2d

    .line 516
    :cond_34
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    .line 517
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v5, :cond_35

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v6, v5, :cond_33

    .line 518
    :cond_35
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-eq v5, v15, :cond_36

    goto :goto_23

    :cond_36
    if-eqz p5, :cond_37

    .line 524
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_24

    :cond_37
    move-object/from16 v5, v17

    :goto_24
    if-nez v5, :cond_38

    if-eqz p5, :cond_38

    .line 527
    invoke-static {v11, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v5

    :cond_38
    move-object v6, v5

    if-eqz v6, :cond_3b

    .line 531
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_23

    .line 535
    :cond_39
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v20

    .line 536
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v21

    .line 538
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 539
    invoke-interface {v6}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    .line 540
    new-instance v0, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v41, v0

    move-object/from16 v42, v1

    move-object v1, v5

    move/from16 v27, v2

    move-object/from16 v2, v42

    move/from16 v28, v3

    move-object/from16 v3, v25

    move-object/from16 v25, v4

    move-object v4, v11

    const/4 v15, 0x4

    move-object/from16 v5, p2

    move-object/from16 v29, v6

    const/4 v15, 0x3

    move/from16 v6, v20

    move-object/from16 v30, v7

    move/from16 v7, v21

    move-object/from16 v8, v29

    move-object v15, v9

    move-object/from16 v9, v26

    move-object/from16 v44, v10

    move-object/from16 v14, v22

    move-object/from16 v45, v25

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v10, v42

    .line 552
    invoke-static {v11, v10, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_26

    :cond_3a
    move/from16 v27, v2

    move/from16 v28, v3

    move-object/from16 v45, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v15, v9

    move-object/from16 v44, v10

    move-object/from16 v14, v22

    move-object v10, v1

    goto :goto_25

    :cond_3b
    move/from16 v27, v2

    move/from16 v28, v3

    move-object/from16 v45, v4

    move-object/from16 v29, v6

    move-object/from16 v30, v7

    move-object v15, v9

    move-object/from16 v44, v10

    move-object/from16 v14, v22

    move-object v10, v1

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_25
    const-string v1, "set"

    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3d

    :cond_3c
    :goto_26
    move-object/from16 v46, v14

    move-object/from16 v20, v44

    goto/16 :goto_2d

    :cond_3d
    const/4 v1, 0x3

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 564
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 565
    sget-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v2, :cond_3e

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    move-object/from16 v9, v44

    goto :goto_28

    .line 568
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_3f
    const/4 v1, 0x4

    const/16 v3, 0x5f

    if-ne v2, v3, :cond_40

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_40
    const/16 v3, 0x66

    if-ne v2, v3, :cond_41

    const/4 v2, 0x3

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_41
    const/4 v2, 0x3

    .line 574
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 575
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 580
    :goto_28
    invoke-static {v11, v0, v14, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_42

    .line 581
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v8, 0x0

    aget-object v2, v2, v8

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_43

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v11, v1, v14, v9}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_29

    :cond_42
    const/4 v8, 0x0

    :cond_43
    :goto_29
    move-object v3, v1

    if-eqz v3, :cond_47

    if-eqz p5, :cond_44

    .line 588
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v7, v1

    goto :goto_2a

    :cond_44
    move-object/from16 v7, v17

    :goto_2a
    if-eqz v7, :cond_47

    .line 591
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v6

    .line 592
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v20

    .line 594
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    .line 595
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    .line 596
    new-instance v5, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v0, v5

    move-object v2, v10

    move-object v4, v11

    move-object v10, v5

    move-object/from16 v5, p2

    move-object/from16 v21, v7

    move/from16 v7, v20

    move-object/from16 v8, v29

    move-object/from16 v22, v9

    move-object/from16 v9, v21

    move-object/from16 v46, v14

    move-object v14, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    invoke-static {v15, v14, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v20, v22

    goto :goto_2d

    :cond_45
    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move-object/from16 v46, v14

    if-nez v29, :cond_46

    move/from16 v7, v20

    move-object/from16 v8, v21

    move-object/from16 v20, v22

    goto :goto_2c

    :cond_46
    move/from16 v7, v20

    goto :goto_2b

    :cond_47
    move-object/from16 v22, v9

    move-object/from16 v46, v14

    move/from16 v6, v20

    move/from16 v7, v21

    :goto_2b
    move-object/from16 v20, v22

    move-object/from16 v8, v29

    :goto_2c
    move-object/from16 v14, p7

    if-eqz v14, :cond_48

    .line 611
    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_48
    move-object v1, v0

    .line 614
    new-instance v9, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v21, 0x0

    move-object v0, v9

    move-object v2, v10

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v47, v9

    move-object/from16 v9, v21

    move-object v14, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v47

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    .line 618
    invoke-static {v11, v14, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    :goto_2d
    add-int/lit8 v2, v27, 0x1

    move-object v9, v15

    move-object/from16 v10, v20

    move/from16 v3, v28

    move-object/from16 v7, v30

    move-object/from16 v4, v45

    move-object/from16 v22, v46

    const/4 v5, 0x4

    const/4 v8, 0x0

    const/4 v15, 0x1

    goto/16 :goto_22

    :cond_49
    move-object/from16 v45, v4

    move-object/from16 v30, v7

    move-object v15, v9

    move-object/from16 v46, v22

    goto :goto_2e

    :cond_4a
    move-object v15, v9

    move-object/from16 v46, v22

    move-object/from16 v45, v30

    move-object/from16 v30, v7

    .line 624
    :goto_2e
    new-instance v0, Ljava/util/ArrayList;

    move-object/from16 v1, v46

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 625
    array-length v2, v1

    const/4 v3, 0x0

    :goto_2f
    if-ge v3, v2, :cond_50

    aget-object v4, v1, v3

    .line 626
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_4b

    :goto_30
    const/16 v43, 0x1

    goto :goto_33

    :cond_4b
    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_4e

    .line 632
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 633
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_4d

    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4c

    goto :goto_31

    :cond_4c
    const/4 v5, 0x0

    goto :goto_32

    :cond_4d
    :goto_31
    const/4 v5, 0x1

    :goto_32
    if-nez v5, :cond_4e

    goto :goto_30

    .line 639
    :cond_4e
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    const/16 v43, 0x1

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4f

    .line 640
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4f
    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_50
    const/16 v43, 0x1

    .line 644
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    :goto_34
    if-eqz v1, :cond_57

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_57

    .line 645
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v3, :cond_56

    aget-object v5, v2, v4

    .line 646
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_51

    goto :goto_38

    :cond_51
    and-int/lit8 v7, v6, 0x10

    if-eqz v7, :cond_54

    .line 652
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 653
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_53

    const-class v8, Ljava/util/Collection;

    invoke-virtual {v8, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_36

    :cond_52
    const/4 v7, 0x0

    goto :goto_37

    :cond_53
    :goto_36
    move/from16 v7, v43

    :goto_37
    if-nez v7, :cond_54

    goto :goto_38

    :cond_54
    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_55

    .line 660
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 644
    :cond_56
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_34

    .line 666
    :cond_57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_39
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/reflect/Field;

    .line 667
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 669
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_3a
    if-ge v2, v1, :cond_59

    .line 670
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 671
    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    move/from16 v7, v43

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_59
    if-eqz v7, :cond_5a

    goto :goto_39

    :cond_5a
    if-eqz p5, :cond_5b

    .line 684
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v9, v1

    goto :goto_3b

    :cond_5b
    move-object/from16 v9, v17

    :goto_3b
    if-eqz v9, :cond_5d

    .line 687
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v1

    .line 688
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    .line 690
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5c

    .line 691
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    :cond_5c
    move v6, v1

    move v7, v2

    goto :goto_3c

    :cond_5d
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3c
    move-object/from16 v10, p7

    if-eqz v10, :cond_5e

    .line 696
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5e
    move-object v1, v0

    .line 699
    invoke-static {v11, v3, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 700
    new-instance v8, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v2, 0x0

    const/16 v20, 0x0

    move-object v0, v8

    move-object v4, v11

    move-object/from16 v5, p2

    move-object/from16 v48, v8

    move-object/from16 v8, v20

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v48

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    goto/16 :goto_39

    :cond_5f
    if-nez v13, :cond_66

    move-object/from16 v14, v45

    .line 715
    array-length v10, v14

    const/4 v9, 0x0

    :goto_3d
    if-ge v9, v10, :cond_66

    aget-object v8, v14, v9

    .line 716
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_60

    move/from16 v23, v2

    move/from16 v20, v9

    move/from16 v21, v10

    :goto_3e
    const/16 v25, 0x3

    goto/16 :goto_42

    :cond_60
    const-string v1, "get"

    .line 721
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 722
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_61

    goto/16 :goto_41

    .line 726
    :cond_61
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 727
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_62

    const-class v2, Ljava/util/Map;

    .line 728
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_65

    :cond_62
    if-eqz p5, :cond_63

    .line 732
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object v7, v1

    goto :goto_3f

    :cond_63
    move-object/from16 v7, v17

    :goto_3f
    if-eqz v7, :cond_64

    .line 736
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_64

    const/4 v5, 0x4

    const/4 v6, 0x3

    goto :goto_40

    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    .line 738
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 740
    :goto_40
    new-instance v4, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v0, v4

    move-object v2, v8

    move-object/from16 v49, v4

    move-object v4, v11

    move/from16 v23, v5

    move-object/from16 v5, p2

    move/from16 v25, v6

    move/from16 v6, v20

    move-object/from16 v20, v7

    move/from16 v7, v21

    move-object/from16 v50, v8

    move-object/from16 v8, v20

    move/from16 v20, v9

    move-object/from16 v9, v22

    move/from16 v21, v10

    move/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V

    move-object/from16 v0, v49

    invoke-static {v15, v0, v13}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->addField(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;Z)Z

    move-object/from16 v0, v50

    .line 744
    invoke-static {v11, v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto :goto_42

    :cond_65
    :goto_41
    move/from16 v20, v9

    move/from16 v21, v10

    const/16 v23, 0x4

    goto/16 :goto_3e

    :goto_42
    add-int/lit8 v9, v20, 0x1

    move/from16 v10, v21

    goto/16 :goto_3d

    .line 750
    :cond_66
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 751
    invoke-interface {v15, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 753
    array-length v0, v5

    new-array v6, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 754
    array-length v0, v5

    const/4 v1, 0x0

    invoke-static {v5, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    if-eqz p4, :cond_67

    .line 757
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object v7, v0

    goto :goto_43

    :cond_67
    move-object/from16 v7, v17

    .line 758
    :goto_43
    new-instance v9, Lcom/alibaba/fastjson/parser/JavaBeanInfo;

    move-object v0, v9

    move-object v1, v11

    move-object/from16 v2, v30

    move-object/from16 v3, v24

    move-object/from16 v4, v40

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/annotation/JSONType;[Ljava/lang/String;)V

    return-object v9
.end method

.method private computeSortedFields([Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)[Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 7

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v0, :cond_0

    return-object p2

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 104
    array-length v1, v0

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    .line 106
    array-length v4, v0

    if-ge v2, v4, :cond_4

    move v4, v1

    .line 108
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_2

    .line 109
    aget-object v5, p2, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    if-nez v4, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_3
    if-nez v2, :cond_5

    return-object p2

    .line 124
    :cond_5
    array-length v2, v0

    array-length p1, p1

    if-ne v2, p1, :cond_c

    move p1, v1

    .line 126
    :goto_4
    array-length v2, v0

    if-ge p1, v2, :cond_7

    .line 127
    aget-object v2, p2, p1

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v4, v0, p1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move p1, v1

    goto :goto_5

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_7
    move p1, v3

    :goto_5
    if-eqz p1, :cond_8

    return-object p2

    .line 137
    :cond_8
    array-length p1, p2

    new-array p1, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    move v2, v1

    .line 138
    :goto_6
    array-length v4, v0

    if-ge v2, v4, :cond_b

    move v4, v1

    .line 139
    :goto_7
    array-length v5, p2

    if-ge v4, v5, :cond_a

    .line 140
    aget-object v5, p2, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 141
    aget-object v4, p2, v4

    aput-object v4, p1, v2

    goto :goto_8

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_a
    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 147
    :cond_b
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    return-object p1

    .line 151
    :cond_c
    array-length p1, p2

    new-array p1, p1, [Lcom/alibaba/fastjson/util/FieldInfo;

    move v2, v1

    .line 152
    :goto_9
    array-length v4, v0

    if-ge v2, v4, :cond_f

    move v4, v1

    .line 153
    :goto_a
    array-length v5, p2

    if-ge v4, v5, :cond_e

    .line 154
    aget-object v5, p2, v4

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 155
    aget-object v4, p2, v4

    aput-object v4, p1, v2

    goto :goto_b

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_e
    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 161
    :cond_f
    array-length v0, v0

    move v2, v0

    move v0, v1

    .line 162
    :goto_c
    array-length v4, p2

    if-ge v0, v4, :cond_13

    move v4, v1

    .line 164
    :goto_d
    array-length v5, p1

    if-ge v4, v5, :cond_11

    if-ge v4, v2, :cond_11

    .line 165
    aget-object v5, p1, v0

    aget-object v6, p2, v4

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    move-result v5

    if-eqz v5, :cond_10

    move v4, v3

    goto :goto_e

    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_11
    move v4, v1

    :goto_e
    if-nez v4, :cond_12

    .line 171
    aget-object v4, p2, v0

    aput-object v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 175
    :cond_13
    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JavaBeanInfo;->ordered:Z

    :cond_14
    return-object p2
.end method
