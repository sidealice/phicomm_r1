.class final Lorg/xutils/http/RequestParamsHelper;
.super Ljava/lang/Object;
.source "RequestParamsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/RequestParamsHelper$ParseKVListener;
    }
.end annotation


# static fields
.field private static final BOOT_CL:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lorg/xutils/http/RequestParamsHelper;->BOOT_CL:Ljava/lang/ClassLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p0, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p0, :cond_1

    const/4 v12, 0x0

    .line 112
    :cond_0
    :goto_0
    return-object v12

    .line 66
    :cond_1
    move-object/from16 v12, p0

    .line 67
    .local v12, "result":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 68
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 69
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 70
    .local v1, "array":Lorg/json/JSONArray;
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v9

    .line 71
    .local v9, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v9, :cond_2

    .line 72
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v1, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 74
    :cond_2
    move-object v12, v1

    .line 75
    .local v12, "result":Lorg/json/JSONArray;
    goto :goto_0

    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v9    # "len":I
    .local v12, "result":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p0

    instance-of v14, v0, Ljava/lang/Iterable;

    if-eqz v14, :cond_5

    .line 76
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .restart local v1    # "array":Lorg/json/JSONArray;
    move-object/from16 v10, p0

    .line 77
    check-cast v10, Ljava/lang/Iterable;

    .line 78
    .local v10, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 79
    .local v6, "item":Ljava/lang/Object;
    invoke-static {v6}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v1, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 81
    .end local v6    # "item":Ljava/lang/Object;
    :cond_4
    move-object v12, v1

    .line 82
    .local v12, "result":Lorg/json/JSONArray;
    goto :goto_0

    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v10    # "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    .local v12, "result":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    instance-of v14, v0, Ljava/util/Map;

    if-eqz v14, :cond_8

    .line 83
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .local v7, "jo":Lorg/json/JSONObject;
    move-object/from16 v11, p0

    .line 84
    check-cast v11, Ljava/util/Map;

    .line 85
    .local v11, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 86
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .line 87
    .local v8, "k":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 88
    .local v13, "v":Ljava/lang/Object;
    if-eqz v8, :cond_6

    if-eqz v13, :cond_6

    .line 89
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13}, Lorg/xutils/http/RequestParamsHelper;->parseJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 92
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v8    # "k":Ljava/lang/Object;
    .end local v13    # "v":Ljava/lang/Object;
    :cond_7
    move-object v12, v7

    .line 93
    .local v12, "result":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 94
    .end local v7    # "jo":Lorg/json/JSONObject;
    .end local v11    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local v12, "result":Ljava/lang/Object;
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 95
    .local v2, "cl":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_0

    sget-object v14, Lorg/xutils/http/RequestParamsHelper;->BOOT_CL:Ljava/lang/ClassLoader;

    if-eq v2, v14, :cond_0

    .line 96
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .restart local v7    # "jo":Lorg/json/JSONObject;
    new-instance v14, Lorg/xutils/http/RequestParamsHelper$1;

    invoke-direct {v14, v7}, Lorg/xutils/http/RequestParamsHelper$1;-><init>(Lorg/json/JSONObject;)V

    move-object/from16 v0, p0

    invoke-static {v0, v3, v14}, Lorg/xutils/http/RequestParamsHelper;->parseKV(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/RequestParamsHelper$ParseKVListener;)V

    .line 108
    move-object v12, v7

    .local v12, "result":Lorg/json/JSONObject;
    goto/16 :goto_0
.end method

.method static parseKV(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/RequestParamsHelper$ParseKVListener;)V
    .locals 10
    .param p0, "entity"    # Ljava/lang/Object;
    .param p2, "listener"    # Lorg/xutils/http/RequestParamsHelper$ParseKVListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/xutils/http/RequestParamsHelper$ParseKVListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-class v6, Lorg/xutils/http/RequestParams;

    if-eq p1, v6, :cond_0

    const-class v6, Ljava/lang/Object;

    if-ne p1, v6, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 35
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-eqz v0, :cond_0

    sget-object v6, Lorg/xutils/http/RequestParamsHelper;->BOOT_CL:Ljava/lang/ClassLoader;

    if-eq v0, v6, :cond_0

    .line 40
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 41
    .local v3, "fields":[Ljava/lang/reflect/Field;
    if-eqz v3, :cond_3

    array-length v6, v3

    if-lez v6, :cond_3

    .line 42
    array-length v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v2, v3, v6

    .line 43
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 44
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Landroid/os/Parcelable$Creator;

    if-eq v8, v9, :cond_2

    .line 45
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 49
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_2

    .line 50
    invoke-interface {p2, v4, v5}, Lorg/xutils/http/RequestParamsHelper$ParseKVListener;->onParseKV(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 59
    .end local v1    # "ex":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {p0, v6, p2}, Lorg/xutils/http/RequestParamsHelper;->parseKV(Ljava/lang/Object;Ljava/lang/Class;Lorg/xutils/http/RequestParamsHelper$ParseKVListener;)V

    goto :goto_0
.end method
