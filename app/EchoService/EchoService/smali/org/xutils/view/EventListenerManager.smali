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
.field private static final AVOID_QUICK_EVENT_SET:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUICK_EVENT_TIME_SPAN:J = 0x12cL

.field private static final listenerCache:Lorg/xutils/common/util/DoubleKeyValueMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/util/DoubleKeyValueMap",
            "<",
            "Lorg/xutils/view/ViewInfo;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lorg/xutils/view/EventListenerManager;->AVOID_QUICK_EVENT_SET:Ljava/util/HashSet;

    .line 39
    sget-object v0, Lorg/xutils/view/EventListenerManager;->AVOID_QUICK_EVENT_SET:Ljava/util/HashSet;

    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lorg/xutils/view/EventListenerManager;->AVOID_QUICK_EVENT_SET:Ljava/util/HashSet;

    const-string v1, "onItemClick"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-direct {v0}, Lorg/xutils/common/util/DoubleKeyValueMap;-><init>()V

    sput-object v0, Lorg/xutils/view/EventListenerManager;->listenerCache:Lorg/xutils/common/util/DoubleKeyValueMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lorg/xutils/view/EventListenerManager;->AVOID_QUICK_EVENT_SET:Ljava/util/HashSet;

    return-object v0
.end method

.method public static addEventMethod(Lorg/xutils/view/ViewFinder;Lorg/xutils/view/ViewInfo;Lorg/xutils/view/annotation/Event;Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 13
    .param p0, "finder"    # Lorg/xutils/view/ViewFinder;
    .param p1, "info"    # Lorg/xutils/view/ViewInfo;
    .param p2, "event"    # Lorg/xutils/view/annotation/Event;
    .param p3, "handler"    # Ljava/lang/Object;
    .param p4, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/xutils/view/ViewFinder;->findViewByInfo(Lorg/xutils/view/ViewInfo;)Landroid/view/View;

    move-result-object v9

    .line 69
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_3

    .line 71
    invoke-interface {p2}, Lorg/xutils/view/annotation/Event;->type()Ljava/lang/Class;

    move-result-object v6

    .line 73
    .local v6, "listenerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p2}, Lorg/xutils/view/annotation/Event;->setter()Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "listenerSetter":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 75
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    :cond_0
    invoke-interface {p2}, Lorg/xutils/view/annotation/Event;->method()Ljava/lang/String;

    move-result-object v7

    .line 81
    .local v7, "methodName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 86
    .local v1, "addNewMethod":Z
    sget-object v10, Lorg/xutils/view/EventListenerManager;->listenerCache:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v10, p1, v6}, Lorg/xutils/common/util/DoubleKeyValueMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 87
    .local v4, "listener":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 94
    .local v2, "dynamicHandler":Lorg/xutils/view/EventListenerManager$DynamicHandler;
    if-eqz v4, :cond_1

    .line 95
    invoke-static {v4}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v2

    .end local v2    # "dynamicHandler":Lorg/xutils/view/EventListenerManager$DynamicHandler;
    check-cast v2, Lorg/xutils/view/EventListenerManager$DynamicHandler;

    .line 96
    .restart local v2    # "dynamicHandler":Lorg/xutils/view/EventListenerManager$DynamicHandler;
    invoke-virtual {v2}, Lorg/xutils/view/EventListenerManager$DynamicHandler;->getHandler()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 97
    if-eqz v1, :cond_1

    .line 98
    move-object/from16 v0, p4

    invoke-virtual {v2, v7, v0}, Lorg/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 103
    :cond_1
    if-nez v1, :cond_2

    .line 105
    new-instance v2, Lorg/xutils/view/EventListenerManager$DynamicHandler;

    .end local v2    # "dynamicHandler":Lorg/xutils/view/EventListenerManager$DynamicHandler;
    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/xutils/view/EventListenerManager$DynamicHandler;-><init>(Ljava/lang/Object;)V

    .line 107
    .restart local v2    # "dynamicHandler":Lorg/xutils/view/EventListenerManager$DynamicHandler;
    move-object/from16 v0, p4

    invoke-virtual {v2, v7, v0}, Lorg/xutils/view/EventListenerManager$DynamicHandler;->addMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 111
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    .line 110
    invoke-static {v10, v11, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    .line 115
    sget-object v10, Lorg/xutils/view/EventListenerManager;->listenerCache:Lorg/xutils/common/util/DoubleKeyValueMap;

    invoke-virtual {v10, p1, v6, v4}, Lorg/xutils/common/util/DoubleKeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v10, v5, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 119
    .local v8, "setEventListenerMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1    # "addNewMethod":Z
    .end local v2    # "dynamicHandler":Lorg/xutils/view/EventListenerManager$DynamicHandler;
    .end local v4    # "listener":Ljava/lang/Object;
    .end local v5    # "listenerSetter":Ljava/lang/String;
    .end local v6    # "listenerType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "methodName":Ljava/lang/String;
    .end local v8    # "setEventListenerMethod":Ljava/lang/reflect/Method;
    .end local v9    # "view":Landroid/view/View;
    :cond_3
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "ex":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v3}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
