.class public Lcom/alibaba/sdk/android/feedback/xblink/f/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static g:Lcom/alibaba/sdk/android/feedback/xblink/f/d;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private h:Landroid/os/Handler;

.field private i:Z

.field private final j:Ljava/util/List;

.field private k:Z

.field private l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hybrid://(.+?):(.+?)/(.+?)(\\?(.*?))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->b:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->c:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->d:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->e:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->f:I

    iput-boolean v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->i:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->j:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->m:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->h:Landroid/os/Handler;

    return-void
.end method

.method public static declared-synchronized a()Lcom/alibaba/sdk/android/feedback/xblink/f/d;
    .locals 2

    const-class v0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/f/d;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;-><init>()V

    sput-object v1, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/d;

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->g:Lcom/alibaba/sdk/android/feedback/xblink/f/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/String;)Lcom/alibaba/sdk/android/feedback/xblink/f/f;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/f;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/d;Lcom/alibaba/sdk/android/feedback/xblink/f/e;)V

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->f:Ljava/lang/String;

    :cond_1
    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->g:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    return-object v1

    :cond_2
    return-object v0
.end method

.method private a(ILcom/alibaba/sdk/android/feedback/xblink/f/f;)V
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->h:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/feedback/xblink/f/d;Lcom/alibaba/sdk/android/feedback/xblink/f/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(Lcom/alibaba/sdk/android/feedback/xblink/f/f;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alibaba/sdk/android/feedback/xblink/f/f;Ljava/lang/String;)V
    .locals 9

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const-string v0, "callMethod-obj:%s method:%s param:%s sid:%s"

    new-array v6, v2, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    aput-object v7, v6, v5

    iget-object v7, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v7, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->f:Ljava/lang/String;

    aput-object v7, v6, v3

    iget-object v7, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->g:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "WVJsBridge"

    invoke-static {v6, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->i:Z

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->k:Z

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/feedback/xblink/f/g;

    iget-object v6, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    iget-object v7, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    iget-object v8, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->f:Ljava/lang/String;

    invoke-interface {v2, p2, v6, v7, v8}, Lcom/alibaba/sdk/android/feedback/xblink/f/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p2, "WVJsBridge"

    const-string v0, "preprocessor call fail, callMethod cancel."

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(ILcom/alibaba/sdk/android/feedback/xblink/f/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :cond_3
    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->l:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1

    :cond_4
    :goto_0
    iget-object p2, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "WVJsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call method through alias name. newObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "name"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " newMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "method"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "name"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    const-string v0, "method"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    :cond_6
    iget-object p2, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v0, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getJsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9

    instance-of v0, p2, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    if-eqz v0, :cond_7

    const-string v0, "WVJsBridge"

    const-string v1, "call new method execute."

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->b:Ljava/lang/Object;

    invoke-direct {p0, v5, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(ILcom/alibaba/sdk/android/feedback/xblink/f/f;)V

    return-void

    :cond_7
    :try_start_1
    iget-object v0, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v2, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Lcom/alibaba/sdk/android/feedback/xblink/f/n;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object p2, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->b:Ljava/lang/Object;

    iput-object v0, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->c:Ljava/lang/reflect/Method;

    invoke-direct {p0, v4, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(ILcom/alibaba/sdk/android/feedback/xblink/f/f;)V

    return-void

    :cond_8
    const-string p2, "WVJsBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callMethod: Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t has @WindVaneInterface annotation, obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string p2, "WVJsBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callMethod: Method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t found. It must has two parameter, Object.class and String.class, obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string p2, "WVJsBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callMethod: Plugin "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t found, you should call WVPluginManager.registerPlugin first."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_1
    invoke-direct {p0, v3, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(ILcom/alibaba/sdk/android/feedback/xblink/f/f;)V

    return-void

    :cond_b
    :goto_2
    const-string p2, "WVJsBridge"

    const-string v0, "jsbridge is closed."

    invoke-static {p2, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(ILcom/alibaba/sdk/android/feedback/xblink/f/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WVJsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callMethod: url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->m:Z

    if-nez v0, :cond_1

    const-string p1, "WVJsBridge"

    const-string p2, "jsbridge is not init."

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0, p2}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(Ljava/lang/String;)Lcom/alibaba/sdk/android/feedback/xblink/f/f;

    move-result-object v0

    if-nez v0, :cond_2

    const-string p1, "WVJsBridge"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url format error and call canceled. url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iput-object p1, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->a()Lcom/alibaba/sdk/android/feedback/xblink/h/a;

    move-result-object p2

    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/f/e;

    invoke-direct {v1, p0, v0, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/e;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/f/d;Lcom/alibaba/sdk/android/feedback/xblink/f/f;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/alibaba/sdk/android/feedback/xblink/h/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->i:Z

    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->m:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "WVJsBridge"

    const-string v0, "CallMethodContext is null, and do nothing."

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    iget-object v3, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->a:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    iget-object v4, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->g:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    const-string v0, "HY_CLOSED"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->b(Lcom/alibaba/sdk/android/feedback/xblink/f/m;)V

    return v4

    :pswitch_1
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    const-string v0, "HY_NO_PERMISSION"

    goto :goto_0

    :pswitch_2
    new-instance p1, Lcom/alibaba/sdk/android/feedback/xblink/f/m;

    invoke-direct {p1}, Lcom/alibaba/sdk/android/feedback/xblink/f/m;-><init>()V

    const-string v0, "HY_NO_HANDLER"

    goto :goto_0

    :pswitch_3
    iget-object p1, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->b:Ljava/lang/Object;

    :try_start_0
    iget-object v5, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->c:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    iget-object v1, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "{}"

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->f:Ljava/lang/String;

    :goto_1
    aput-object v1, v3, v4

    invoke-virtual {v5, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    const-string v1, "WVJsBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->c:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " exception. "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :pswitch_4
    iget-object p1, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->b:Ljava/lang/Object;

    const-string v1, "WVJsBridge"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WVApiPlugin execute . method: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    iget-object v1, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    iget-object v5, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "{}"

    goto :goto_2

    :cond_2
    iget-object v5, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->f:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v1, v5, v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/xblink/f/b;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "WVJsBridge"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WVApiPlugin execute failed. method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alibaba/sdk/android/feedback/xblink/f/f;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v3, v0}, Lcom/alibaba/sdk/android/feedback/xblink/f/d;->a(ILcom/alibaba/sdk/android/feedback/xblink/f/f;)V

    :cond_4
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
