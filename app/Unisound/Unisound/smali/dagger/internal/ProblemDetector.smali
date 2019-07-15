.class public final Ldagger/internal/ProblemDetector;
.super Ljava/lang/Object;
.source "ProblemDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/ProblemDetector$ArraySet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private static detectCircularDependencies(Ljava/util/Collection;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/List",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "bindings":Ljava/util/Collection;, "Ljava/util/Collection<Ldagger/internal/Binding<*>;>;"
    .local p1, "path":Ljava/util/List;, "Ljava/util/List<Ldagger/internal/Binding<*>;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 53
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 54
    .local v0, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v0}, Ldagger/internal/Binding;->isCycleFree()Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    invoke-virtual {v0}, Ldagger/internal/Binding;->isVisiting()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 60
    .local v4, "index":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dependency cycle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 62
    .local v5, "message":Ljava/lang/StringBuilder;
    move v2, v4

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 63
    const-string v6, "\n    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldagger/internal/Binding;

    iget-object v6, v6, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bound by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_1
    const-string v6, "\n    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 70
    .end local v2    # "i":I
    .end local v4    # "index":I
    .end local v5    # "message":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {v0, v7}, Ldagger/internal/Binding;->setVisiting(Z)V

    .line 71
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :try_start_0
    new-instance v1, Ldagger/internal/ProblemDetector$ArraySet;

    invoke-direct {v1}, Ldagger/internal/ProblemDetector$ArraySet;-><init>()V

    .line 74
    .local v1, "dependencies":Ldagger/internal/ProblemDetector$ArraySet;, "Ldagger/internal/ProblemDetector$ArraySet<Ldagger/internal/Binding<*>;>;"
    invoke-virtual {v0, v1, v1}, Ldagger/internal/Binding;->getDependencies(Ljava/util/Set;Ljava/util/Set;)V

    .line 75
    invoke-static {v1, p1}, Ldagger/internal/ProblemDetector;->detectCircularDependencies(Ljava/util/Collection;Ljava/util/List;)V

    .line 76
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ldagger/internal/Binding;->setCycleFree(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    invoke-virtual {v0, v8}, Ldagger/internal/Binding;->setVisiting(Z)V

    goto/16 :goto_0

    .line 78
    .end local v1    # "dependencies":Ldagger/internal/ProblemDetector$ArraySet;, "Ldagger/internal/ProblemDetector$ArraySet<Ldagger/internal/Binding<*>;>;"
    :catchall_0
    move-exception v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {p1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 79
    invoke-virtual {v0, v8}, Ldagger/internal/Binding;->setVisiting(Z)V

    throw v6

    .line 82
    .end local v0    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public detectCircularDependencies(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "bindings":Ljava/util/Collection;, "Ljava/util/Collection<Ldagger/internal/Binding<*>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Ldagger/internal/ProblemDetector;->detectCircularDependencies(Ljava/util/Collection;Ljava/util/List;)V

    .line 30
    return-void
.end method

.method public detectProblems(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ldagger/internal/Binding<*>;>;"
    invoke-virtual {p0, p1}, Ldagger/internal/ProblemDetector;->detectCircularDependencies(Ljava/util/Collection;)V

    .line 86
    invoke-virtual {p0, p1}, Ldagger/internal/ProblemDetector;->detectUnusedBinding(Ljava/util/Collection;)V

    .line 87
    return-void
.end method

.method public detectUnusedBinding(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "bindings":Ljava/util/Collection;, "Ljava/util/Collection<Ldagger/internal/Binding<*>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v4, "unusedBindings":Ljava/util/List;, "Ljava/util/List<Ldagger/internal/Binding;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 35
    .local v0, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v0}, Ldagger/internal/Binding;->library()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ldagger/internal/Binding;->dependedOn()Z

    move-result v5

    if-nez v5, :cond_0

    .line 36
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    .end local v0    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v5, "You have these unused @Provider methods:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 43
    const-string v5, "\n    "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldagger/internal/Binding;

    iget-object v5, v5, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 46
    :cond_2
    const-string v5, "\n    Set library=true in your module to disable this check."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 49
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    :cond_3
    return-void
.end method
