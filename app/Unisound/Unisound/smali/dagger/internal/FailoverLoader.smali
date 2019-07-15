.class public final Ldagger/internal/FailoverLoader;
.super Ldagger/internal/Loader;
.source "FailoverLoader.java"


# instance fields
.field private final loadedAdapters:Ldagger/internal/Memoizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Memoizer",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ldagger/internal/ModuleAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ldagger/internal/Loader;-><init>()V

    .line 39
    new-instance v0, Ldagger/internal/FailoverLoader$1;

    invoke-direct {v0, p0}, Ldagger/internal/FailoverLoader$1;-><init>(Ldagger/internal/FailoverLoader;)V

    iput-object v0, p0, Ldagger/internal/FailoverLoader;->loadedAdapters:Ldagger/internal/Memoizer;

    return-void
.end method


# virtual methods
.method public getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mustHaveInjections"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 62
    const-string v2, "$$InjectAdapter"

    invoke-virtual {p2, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Ldagger/internal/FailoverLoader;->instantiate(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 63
    .local v0, "result":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-eqz v0, :cond_0

    .line 74
    .end local v0    # "result":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :goto_0
    return-object v0

    .line 66
    .restart local v0    # "result":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_0
    invoke-virtual {p0, p3, p2}, Ldagger/internal/FailoverLoader;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 67
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Void;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not load class %s needed for binding %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    const/4 v0, 0x0

    goto :goto_0

    .line 74
    :cond_2
    invoke-static {v1, p4}, Ldagger/internal/loaders/ReflectiveAtInjectBinding;->create(Ljava/lang/Class;Z)Ldagger/internal/Binding;

    move-result-object v0

    goto :goto_0
.end method

.method public getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ldagger/internal/ModuleAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Ldagger/internal/FailoverLoader;->loadedAdapters:Ldagger/internal/Memoizer;

    invoke-virtual {v0, p1}, Ldagger/internal/Memoizer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/ModuleAdapter;

    return-object v0
.end method

.method public getStaticInjection(Ljava/lang/Class;)Ldagger/internal/StaticInjection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ldagger/internal/StaticInjection;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "injectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "$$StaticInjection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ldagger/internal/FailoverLoader;->instantiate(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/StaticInjection;

    .line 80
    .local v0, "result":Ldagger/internal/StaticInjection;
    if-eqz v0, :cond_0

    .line 83
    .end local v0    # "result":Ldagger/internal/StaticInjection;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ldagger/internal/StaticInjection;
    :cond_0
    invoke-static {p1}, Ldagger/internal/loaders/ReflectiveStaticInjection;->create(Ljava/lang/Class;)Ldagger/internal/StaticInjection;

    move-result-object v0

    goto :goto_0
.end method
