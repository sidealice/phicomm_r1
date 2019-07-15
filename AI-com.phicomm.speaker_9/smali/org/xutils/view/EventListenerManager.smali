.class final Lorg/xutils/view/EventListenerManager;
.super Ljava/lang/Object;
.source "EventListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/view/EventListenerManager$DynamicHandler;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lorg/xutils/common/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/util/DoubleKeyValueMap<",
            "Lorg/xutils/view/b;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/xutils/view/EventListenerManager;->a:Ljava/util/HashSet;

    .line 39
    sget-object v0, Lorg/xutils/view/EventListenerManager;->a:Ljava/util/HashSet;

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lorg/xutils/view/EventListenerManager;->a:Ljava/util/HashSet;

    const-string v1, "onItemClick"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-direct {v0}, Lorg/xutils/common/util/DoubleKeyValueMap;-><init>()V

    sput-object v0, Lorg/xutils/view/EventListenerManager;->b:Lorg/xutils/common/util/DoubleKeyValueMap;

    return-void
.end method

.method static synthetic a()Ljava/util/HashSet;
    .locals 1

    .line 33
    sget-object v0, Lorg/xutils/view/EventListenerManager;->a:Ljava/util/HashSet;

    return-object v0
.end method

.method public static a(Lorg/xutils/view/a;Lorg/xutils/view/b;Lorg/xutils/view/annotation/Event;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 6

    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/xutils/view/a;->a(Lorg/xutils/view/b;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 71
    invoke-interface {p2}, Lorg/xutils/view/annotation/Event;->type()Ljava/lang/Class;

    move-result-object v0

    .line 73
    invoke-interface {p2}, Lorg/xutils/view/annotation/Event;->setter()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    :cond_0
    invoke-interface {p2}, Lorg/xutils/view/annotation/Event;->method()Ljava/lang/String;

    move-result-object p2

    .line 86
    sget-object v2, Lorg/xutils/view/EventListenerManager;->b:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v2, p1, v0}, Lorg/xutils/common/util/DoubleKeyValueMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 95
    invoke-static {v2}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v4

    check-cast v4, Lorg/xutils/view/EventListenerManager$DynamicHandler;

    .line 96
    invoke-virtual {v4}, Lorg/xutils/view/EventListenerManager$DynamicHandler;->getHandler()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    invoke-virtual {v4, p2, p4}, Lorg/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    goto :goto_0

    :cond_1
    move v5, v3

    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-nez v5, :cond_3

    .line 105
    new-instance v2, Lorg/xutils/view/EventListenerManager$DynamicHandler;

    invoke-direct {v2, p3}, Lorg/xutils/view/EventListenerManager$DynamicHandler;-><init>(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v2, p2, p4}, Lorg/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    new-array p3, v4, [Ljava/lang/Class;

    aput-object v0, p3, v3

    .line 110
    invoke-static {p2, p3, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    sget-object p2, Lorg/xutils/view/EventListenerManager;->b:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {p2, p1, v0, v2}, Lorg/xutils/common/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    new-array p2, v4, [Ljava/lang/Class;

    aput-object v0, p2, v3

    invoke-virtual {p1, v1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 119
    new-array p2, v4, [Ljava/lang/Object;

    aput-object v2, p2, v3

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method
