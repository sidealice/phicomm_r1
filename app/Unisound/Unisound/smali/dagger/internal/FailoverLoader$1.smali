.class Ldagger/internal/FailoverLoader$1;
.super Ldagger/internal/Memoizer;
.source "FailoverLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/FailoverLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic this$0:Ldagger/internal/FailoverLoader;


# direct methods
.method constructor <init>(Ldagger/internal/FailoverLoader;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Ldagger/internal/FailoverLoader$1;->this$0:Ldagger/internal/FailoverLoader;

    invoke-direct {p0}, Ldagger/internal/Memoizer;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ldagger/internal/ModuleAdapter",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Ldagger/internal/FailoverLoader$1;->this$0:Ldagger/internal/FailoverLoader;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "$$ModuleAdapter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ldagger/internal/FailoverLoader;->instantiate(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/ModuleAdapter;

    .line 44
    .local v0, "result":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    if-nez v0, :cond_0

    .line 45
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Module adapter for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " could not be loaded. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Please ensure that code generation was run for this module."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 48
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ldagger/internal/FailoverLoader$1;->create(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;

    move-result-object v0

    return-object v0
.end method
