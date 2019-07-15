.class public abstract Ldagger/internal/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# instance fields
.field private final caches:Ldagger/internal/Memoizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Memoizer",
            "<",
            "Ljava/lang/ClassLoader;",
            "Ldagger/internal/Memoizer",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ldagger/internal/Loader$1;

    invoke-direct {v0, p0}, Ldagger/internal/Loader$1;-><init>(Ldagger/internal/Loader;)V

    iput-object v0, p0, Ldagger/internal/Loader;->caches:Ldagger/internal/Memoizer;

    return-void
.end method


# virtual methods
.method public abstract getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
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
.end method

.method public abstract getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;
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
.end method

.method public abstract getStaticInjection(Ljava/lang/Class;)Ldagger/internal/StaticInjection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ldagger/internal/StaticInjection;"
        }
    .end annotation
.end method

.method protected instantiate(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    invoke-virtual {p0, p2, p1}, Ldagger/internal/Loader;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 80
    .local v1, "generatedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/Void;

    if-ne v1, v3, :cond_0

    .line 81
    const/4 v2, 0x0

    .line 85
    :goto_0
    return-object v2

    .line 84
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 85
    .local v2, "instance":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 86
    .end local v1    # "generatedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "instance":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to initialize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 88
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to initialize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    :goto_0
    iget-object v0, p0, Ldagger/internal/Loader;->caches:Ldagger/internal/Memoizer;

    invoke-virtual {v0, p1}, Ldagger/internal/Memoizer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Memoizer;

    invoke-virtual {v0, p2}, Ldagger/internal/Memoizer;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0
.end method
