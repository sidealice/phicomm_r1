.class public final Lorg/xutils/http/loader/LoaderFactory;
.super Ljava/lang/Object;
.source "LoaderFactory.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/loader/Loader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    .line 27
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    const-class v1, Lorg/json/JSONObject;

    new-instance v2, Lorg/xutils/http/loader/e;

    invoke-direct {v2}, Lorg/xutils/http/loader/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    const-class v1, Lorg/json/JSONArray;

    new-instance v2, Lorg/xutils/http/loader/d;

    invoke-direct {v2}, Lorg/xutils/http/loader/d;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lorg/xutils/http/loader/g;

    invoke-direct {v2}, Lorg/xutils/http/loader/g;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    const-class v1, Ljava/io/File;

    new-instance v2, Lorg/xutils/http/loader/FileLoader;

    invoke-direct {v2}, Lorg/xutils/http/loader/FileLoader;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    const-class v1, [B

    new-instance v2, Lorg/xutils/http/loader/b;

    invoke-direct {v2}, Lorg/xutils/http/loader/b;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v0, Lorg/xutils/http/loader/a;

    invoke-direct {v0}, Lorg/xutils/http/loader/a;-><init>()V

    .line 33
    sget-object v1, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v1, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Lorg/xutils/http/loader/c;

    invoke-direct {v0}, Lorg/xutils/http/loader/c;-><init>()V

    .line 36
    sget-object v1, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoader(Ljava/lang/reflect/Type;Lorg/xutils/http/RequestParams;)Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/RequestParams;",
            ")",
            "Lorg/xutils/http/loader/Loader<",
            "*>;"
        }
    .end annotation

    .line 42
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xutils/http/loader/Loader;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lorg/xutils/http/loader/f;

    invoke-direct {v0, p0}, Lorg/xutils/http/loader/f;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/http/loader/Loader;->newInstance()Lorg/xutils/http/loader/Loader;

    move-result-object v0

    .line 48
    :goto_0
    invoke-virtual {v0, p1}, Lorg/xutils/http/loader/Loader;->setParams(Lorg/xutils/http/RequestParams;)V

    return-object v0
.end method

.method public static registerLoader(Ljava/lang/reflect/Type;Lorg/xutils/http/loader/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Lorg/xutils/http/loader/Loader<",
            "TT;>;)V"
        }
    .end annotation

    .line 53
    sget-object v0, Lorg/xutils/http/loader/LoaderFactory;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
