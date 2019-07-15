.class public abstract Ldagger/internal/ModuleAdapter;
.super Ljava/lang/Object;
.source "ModuleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final complete:Z

.field public final includes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final injectableTypes:[Ljava/lang/String;

.field public final library:Z

.field public final moduleClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field public final overrides:Z

.field public final staticInjections:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;Z[Ljava/lang/Class;ZZ)V
    .locals 0
    .param p2, "injectableTypes"    # [Ljava/lang/String;
    .param p4, "overrides"    # Z
    .param p6, "complete"    # Z
    .param p7, "library"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z[",
            "Ljava/lang/Class",
            "<*>;ZZ)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<TT;>;"
    .local p1, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "staticInjections":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p5, "includes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Ldagger/internal/ModuleAdapter;->moduleClass:Ljava/lang/Class;

    .line 36
    iput-object p2, p0, Ldagger/internal/ModuleAdapter;->injectableTypes:[Ljava/lang/String;

    .line 37
    iput-object p3, p0, Ldagger/internal/ModuleAdapter;->staticInjections:[Ljava/lang/Class;

    .line 38
    iput-boolean p4, p0, Ldagger/internal/ModuleAdapter;->overrides:Z

    .line 39
    iput-object p5, p0, Ldagger/internal/ModuleAdapter;->includes:[Ljava/lang/Class;

    .line 40
    iput-boolean p6, p0, Ldagger/internal/ModuleAdapter;->complete:Z

    .line 41
    iput-boolean p7, p0, Ldagger/internal/ModuleAdapter;->library:Z

    .line 42
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 63
    .local p0, "this":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<TT;>;"
    if-ne p1, p0, :cond_0

    .line 64
    const/4 v1, 0x1

    .line 69
    :goto_0
    return v1

    .line 65
    :cond_0
    instance-of v1, p1, Ldagger/internal/ModuleAdapter;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 66
    check-cast v0, Ldagger/internal/ModuleAdapter;

    .line 67
    .local v0, "that":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    iget-object v1, p0, Ldagger/internal/ModuleAdapter;->moduleClass:Ljava/lang/Class;

    iget-object v2, v0, Ldagger/internal/ModuleAdapter;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 69
    .end local v0    # "that":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBindings(Ldagger/internal/BindingsGroup;Ljava/lang/Object;)V
    .locals 0
    .param p1, "map"    # Ldagger/internal/BindingsGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/BindingsGroup;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<TT;>;"
    .local p2, "module":Ljava/lang/Object;, "TT;"
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<TT;>;"
    iget-object v0, p0, Ldagger/internal/ModuleAdapter;->moduleClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected newModule()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No no-args constructor on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
