.class public final Lorg/xutils/http/loader/LoaderFactory;
.super Ljava/lang/Object;
.source "LoaderFactory.java"


# static fields
.field private static final converterHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/loader/Loader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    .line 27
    sget-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    const-class v3, Lorg/json/JSONObject;

    new-instance v4, Lorg/xutils/http/loader/JSONObjectLoader;

    invoke-direct {v4}, Lorg/xutils/http/loader/JSONObjectLoader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    const-class v3, Lorg/json/JSONArray;

    new-instance v4, Lorg/xutils/http/loader/JSONArrayLoader;

    invoke-direct {v4}, Lorg/xutils/http/loader/JSONArrayLoader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    const-class v3, Ljava/lang/String;

    new-instance v4, Lorg/xutils/http/loader/StringLoader;

    invoke-direct {v4}, Lorg/xutils/http/loader/StringLoader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    const-class v3, Ljava/io/File;

    new-instance v4, Lorg/xutils/http/loader/FileLoader;

    invoke-direct {v4}, Lorg/xutils/http/loader/FileLoader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    const-class v3, [B

    new-instance v4, Lorg/xutils/http/loader/ByteArrayLoader;

    invoke-direct {v4}, Lorg/xutils/http/loader/ByteArrayLoader;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lorg/xutils/http/loader/BooleanLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/BooleanLoader;-><init>()V

    .line 33
    .local v0, "booleanLoader":Lorg/xutils/http/loader/BooleanLoader;
    sget-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Lorg/xutils/http/loader/IntegerLoader;

    invoke-direct {v1}, Lorg/xutils/http/loader/IntegerLoader;-><init>()V

    .line 36
    .local v1, "integerLoader":Lorg/xutils/http/loader/IntegerLoader;
    sget-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v2, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getLoader(Ljava/lang/reflect/Type;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/loader/Loader;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .param p1, "params"    # Lorg/xutils/http/RequestParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/RequestParams;",
            ")",
            "Lorg/xutils/http/loader/Loader",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 42
    sget-object v1, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/loader/Loader;

    .line 43
    .local v0, "result":Lorg/xutils/http/loader/Loader;, "Lorg/xutils/http/loader/Loader<*>;"
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/xutils/http/loader/ObjectLoader;

    .end local v0    # "result":Lorg/xutils/http/loader/Loader;, "Lorg/xutils/http/loader/Loader<*>;"
    invoke-direct {v0, p0}, Lorg/xutils/http/loader/ObjectLoader;-><init>(Ljava/lang/reflect/Type;)V

    .line 48
    .restart local v0    # "result":Lorg/xutils/http/loader/Loader;, "Lorg/xutils/http/loader/Loader<*>;"
    :goto_0
    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->setParams(Lorg/xutils/http/RequestParams;)V

    .line 49
    return-object v0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/http/loader/Loader;->newInstance()Lorg/xutils/http/loader/Loader;

    move-result-object v0

    goto :goto_0
.end method

.method public static registerLoader(Ljava/lang/reflect/Type;Lorg/xutils/http/loader/Loader;)V
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/loader/Loader",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "loader":Lorg/xutils/http/loader/Loader;, "Lorg/xutils/http/loader/Loader<TT;>;"
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->converterHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method
