.class public Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
.super Ljava/lang/Object;
.source "DeserializeBeanInfo.java"


# instance fields
.field private creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private factoryMethod:Ljava/lang/reflect/Method;

.field private final fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parserFeatures:I

.field private final sortedFieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->fieldList:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->sortedFieldList:Ljava/util/List;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->parserFeatures:I

    .line 33
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->parserFeatures:I

    .line 34
    return-void
.end method

.method public static computeSetters(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    .locals 39
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/util/DeserializeBeanInfo;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v23, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;-><init>(Ljava/lang/Class;)V

    .line 88
    .local v23, "beanInfo":Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v27

    .line 89
    .local v27, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v27, :cond_2

    .line 90
    invoke-static/range {v27 .. v27}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 91
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->setDefaultConstructor(Ljava/lang/reflect/Constructor;)V

    .line 161
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v22

    .local v22, "arr$":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v31, 0x0

    .local v31, "i$":I
    :goto_0
    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_15

    aget-object v12, v22, v31

    .line 162
    .local v12, "method":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    .local v8, "ordinal":I
    const/4 v9, 0x0

    .line 163
    .local v9, "serialzeFeatures":I
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v36

    .line 164
    .local v36, "methodName":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_b

    .line 161
    :cond_1
    :goto_1
    add-int/lit8 v31, v31, 0x1

    goto :goto_0

    .line 92
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v12    # "method":Ljava/lang/reflect/Method;
    .end local v22    # "arr$":[Ljava/lang/reflect/Method;
    .end local v31    # "i$":I
    .end local v35    # "len$":I
    .end local v36    # "methodName":Ljava/lang/String;
    :cond_2
    if-nez v27, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v26

    .line 94
    .local v26, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v26, :cond_6

    .line 95
    invoke-static/range {v26 .. v26}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 96
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->setCreatorConstructor(Ljava/lang/reflect/Constructor;)V

    .line 98
    const/16 v30, 0x0

    .local v30, "i":I
    :goto_2
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_20

    .line 99
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    aget-object v38, v3, v30

    .line 100
    .local v38, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v29, 0x0

    .line 101
    .local v29, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v22, v38

    .local v22, "arr$":[Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v35, v0

    .restart local v35    # "len$":I
    const/16 v31, 0x0

    .restart local v31    # "i$":I
    :goto_3
    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_3

    aget-object v37, v22, v31

    .line 102
    .local v37, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v37

    instance-of v3, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_4

    move-object/from16 v29, v37

    .line 103
    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 107
    .end local v37    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_3
    if-nez v29, :cond_5

    .line 108
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "illegal json creator"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    .restart local v37    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_4
    add-int/lit8 v31, v31, 0x1

    goto :goto_3

    .line 111
    .end local v37    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_5
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v5, v3, v30

    .line 112
    .local v5, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v6, v3, v30

    .line 113
    .local v6, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 114
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 115
    .restart local v8    # "ordinal":I
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 116
    .restart local v9    # "serialzeFeatures":I
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 118
    .local v2, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 98
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 123
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fieldType":Ljava/lang/reflect/Type;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v22    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v30    # "i":I
    .end local v31    # "i$":I
    .end local v35    # "len$":I
    .end local v38    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v28

    .line 124
    .local v28, "factoryMethod":Ljava/lang/reflect/Method;
    if-eqz v28, :cond_a

    .line 125
    invoke-static/range {v28 .. v28}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 126
    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->setFactoryMethod(Ljava/lang/reflect/Method;)V

    .line 128
    const/16 v30, 0x0

    .restart local v30    # "i":I
    :goto_4
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    move/from16 v0, v30

    if-ge v0, v3, :cond_20

    .line 129
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v3

    aget-object v38, v3, v30

    .line 130
    .restart local v38    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v29, 0x0

    .line 131
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v22, v38

    .restart local v22    # "arr$":[Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v35, v0

    .restart local v35    # "len$":I
    const/16 v31, 0x0

    .restart local v31    # "i$":I
    :goto_5
    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    aget-object v37, v22, v31

    .line 132
    .restart local v37    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v37

    instance-of v3, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v3, :cond_8

    move-object/from16 v29, v37

    .line 133
    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 137
    .end local v37    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_7
    if-nez v29, :cond_9

    .line 138
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "illegal json creator"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .restart local v37    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_8
    add-int/lit8 v31, v31, 0x1

    goto :goto_5

    .line 141
    .end local v37    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_9
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    aget-object v5, v3, v30

    .line 142
    .restart local v5    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v6, v3, v30

    .line 143
    .restart local v6    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 144
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 145
    .restart local v8    # "ordinal":I
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 146
    .restart local v9    # "serialzeFeatures":I
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 153
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 128
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 158
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v5    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fieldType":Ljava/lang/reflect/Type;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v22    # "arr$":[Ljava/lang/annotation/Annotation;
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v30    # "i":I
    .end local v31    # "i$":I
    .end local v35    # "len$":I
    .end local v38    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_a
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "default constructor not found. "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    .end local v26    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v28    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v8    # "ordinal":I
    .restart local v9    # "serialzeFeatures":I
    .restart local v12    # "method":Ljava/lang/reflect/Method;
    .local v22, "arr$":[Ljava/lang/reflect/Method;
    .restart local v31    # "i$":I
    .restart local v35    # "len$":I
    .restart local v36    # "methodName":Ljava/lang/String;
    :cond_b
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    :cond_c
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 181
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 183
    .local v21, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v21, :cond_d

    .line 184
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v21

    .line 187
    :cond_d
    if-eqz v21, :cond_e

    .line 188
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 192
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 193
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 195
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_e

    .line 196
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, "propertyName":Ljava/lang/String;
    new-instance v10, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v13, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 198
    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto/16 :goto_1

    .line 203
    .end local v11    # "propertyName":Ljava/lang/String;
    :cond_e
    const-string v3, "set"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    const/4 v3, 0x3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 210
    .local v24, "c3":C
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 211
    sget-boolean v3, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v3, :cond_10

    .line 212
    const/4 v3, 0x3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 226
    .restart local v11    # "propertyName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 227
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    if-nez v7, :cond_f

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_f

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 229
    .local v33, "isFieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 232
    .end local v33    # "isFieldName":Ljava/lang/String;
    :cond_f
    if-eqz v7, :cond_14

    .line 233
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v29

    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 235
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v29, :cond_14

    .line 236
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 237
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 239
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_14

    .line 240
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v11

    .line 241
    new-instance v10, Lcom/alibaba/fastjson/util/FieldInfo;

    move-object v13, v7

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_1

    .line 214
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "propertyName":Ljava/lang/String;
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 216
    .end local v11    # "propertyName":Ljava/lang/String;
    :cond_11
    const/16 v3, 0x5f

    move/from16 v0, v24

    if-ne v0, v3, :cond_12

    .line 217
    const/4 v3, 0x4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 218
    .end local v11    # "propertyName":Ljava/lang/String;
    :cond_12
    const/16 v3, 0x66

    move/from16 v0, v24

    if-ne v0, v3, :cond_13

    .line 219
    const/4 v3, 0x3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 220
    .end local v11    # "propertyName":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    const/4 v3, 0x4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 221
    const/4 v3, 0x3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 247
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    :cond_14
    new-instance v10, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v13, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 248
    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto/16 :goto_1

    .line 251
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v11    # "propertyName":Ljava/lang/String;
    .end local v12    # "method":Ljava/lang/reflect/Method;
    .end local v21    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v24    # "c3":C
    .end local v36    # "methodName":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v22

    .local v22, "arr$":[Ljava/lang/reflect/Field;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v35, v0

    const/16 v31, 0x0

    move/from16 v32, v31

    .end local v31    # "i$":I
    .local v32, "i$":I
    :goto_7
    move/from16 v0, v32

    move/from16 v1, v35

    if-ge v0, v1, :cond_1b

    aget-object v7, v22, v32

    .line 252
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 251
    .end local v32    # "i$":I
    :cond_16
    :goto_8
    add-int/lit8 v31, v32, 0x1

    .restart local v31    # "i$":I
    move/from16 v32, v31

    .end local v31    # "i$":I
    .restart local v32    # "i$":I
    goto :goto_7

    .line 256
    :cond_17
    const/16 v25, 0x0

    .line 257
    .local v25, "contains":Z
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .end local v32    # "i$":I
    .local v31, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_9
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 258
    .local v34, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual/range {v34 .. v34}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 259
    const/16 v25, 0x1

    .line 260
    goto :goto_9

    .line 264
    .end local v34    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_19
    if-nez v25, :cond_16

    .line 268
    const/4 v8, 0x0

    .restart local v8    # "ordinal":I
    const/4 v9, 0x0

    .line 269
    .restart local v9    # "serialzeFeatures":I
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v11

    .line 271
    .restart local v11    # "propertyName":Ljava/lang/String;
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v29

    check-cast v29, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 273
    .restart local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v29, :cond_1a

    .line 274
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 275
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 277
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 278
    invoke-interface/range {v29 .. v29}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v11

    .line 281
    :cond_1a
    new-instance v13, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v15, 0x0

    move-object v14, v11

    move-object/from16 v16, v7

    move-object/from16 v17, p0

    move-object/from16 v18, p1

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-direct/range {v13 .. v20}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_8

    .line 284
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v11    # "propertyName":Ljava/lang/String;
    .end local v25    # "contains":Z
    .end local v29    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v31    # "i$":Ljava/util/Iterator;
    .restart local v32    # "i$":I
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v22

    .local v22, "arr$":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v35, v0

    const/16 v31, 0x0

    .end local v32    # "i$":I
    .local v31, "i$":I
    :goto_a
    move/from16 v0, v31

    move/from16 v1, v35

    if-ge v0, v1, :cond_20

    aget-object v12, v22, v31

    .line 285
    .restart local v12    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v36

    .line 286
    .restart local v36    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1d

    .line 284
    :cond_1c
    :goto_b
    add-int/lit8 v31, v31, 0x1

    goto :goto_a

    .line 290
    :cond_1d
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 294
    const-string v3, "get"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 295
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_1c

    .line 299
    const-class v3, Ljava/util/Collection;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-class v3, Ljava/util/Map;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 304
    :cond_1e
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v12, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v21

    check-cast v21, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 305
    .restart local v21    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v21, :cond_1f

    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1f

    .line 306
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v11

    .line 311
    .restart local v11    # "propertyName":Ljava/lang/String;
    :goto_c
    new-instance v10, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v13, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v15}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->add(Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 312
    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_b

    .line 308
    .end local v11    # "propertyName":Ljava/lang/String;
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "propertyName":Ljava/lang/String;
    goto :goto_c

    .line 317
    .end local v11    # "propertyName":Ljava/lang/String;
    .end local v12    # "method":Ljava/lang/reflect/Method;
    .end local v21    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v22    # "arr$":[Ljava/lang/reflect/Method;
    .end local v31    # "i$":I
    .end local v35    # "len$":I
    .end local v36    # "methodName":Ljava/lang/String;
    :cond_20
    return-object v23
.end method

.method public static getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 8
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
    .line 349
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 351
    .local v3, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 352
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 353
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v0, :cond_2

    .line 354
    if-eqz v3, :cond_0

    .line 355
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "multi-json creator"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 358
    :cond_0
    move-object v3, v2

    .line 362
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1
    return-object v3

    .line 351
    .restart local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7
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
    .line 321
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    const/4 v2, 0x0

    .line 345
    :cond_0
    :goto_0
    return-object v2

    .line 325
    :cond_1
    const/4 v2, 0x0

    .line 326
    .local v2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 327
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_3

    .line 328
    move-object v2, v1

    .line 333
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    if-nez v2, :cond_0

    .line 334
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 335
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 336
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    move-object v2, v1

    .line 339
    goto :goto_0

    .line 326
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 335
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getFactoryMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 368
    .local v2, "factoryMethod":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v1, v3

    .line 369
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 368
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 378
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v0, :cond_0

    .line 379
    if-eqz v2, :cond_2

    .line 380
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    const-string v7, "multi-json creator"

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 383
    :cond_2
    move-object v2, v5

    .line 387
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_3
    return-object v2
.end method


# virtual methods
.method public add(Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 4
    .param p1, "field"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 69
    iget-object v2, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 70
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-virtual {v1}, Lcom/alibaba/fastjson/util/FieldInfo;->isGetOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->isGetOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    :cond_1
    const/4 v2, 0x0

    .line 82
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_0
    return v2

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->fieldList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->sortedFieldList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v2, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->sortedFieldList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 82
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getCreatorConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getDefaultConstructor()Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method public getFactoryMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->fieldList:Ljava/util/List;

    return-object v0
.end method

.method public getParserFeatures()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->parserFeatures:I

    return v0
.end method

.method public getSortedFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->sortedFieldList:Ljava/util/List;

    return-object v0
.end method

.method public setCreatorConstructor(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "createConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 50
    return-void
.end method

.method public setDefaultConstructor(Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iput-object p1, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 42
    return-void
.end method

.method public setFactoryMethod(Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "factoryMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 58
    return-void
.end method
