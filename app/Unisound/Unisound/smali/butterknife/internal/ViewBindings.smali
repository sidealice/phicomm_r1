.class final Lbutterknife/internal/ViewBindings;
.super Ljava/lang/Object;
.source "ViewBindings.java"


# instance fields
.field private final fieldBindings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbutterknife/internal/FieldViewBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final id:I

.field private final methodBindings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lbutterknife/internal/ListenerClass;",
            "Ljava/util/Map",
            "<",
            "Lbutterknife/internal/ListenerMethod;",
            "Ljava/util/Set",
            "<",
            "Lbutterknife/internal/MethodViewBinding;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewBindings;->fieldBindings:Ljava/util/Set;

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lbutterknife/internal/ViewBindings;->methodBindings:Ljava/util/LinkedHashMap;

    .line 19
    iput p1, p0, Lbutterknife/internal/ViewBindings;->id:I

    .line 20
    return-void
.end method


# virtual methods
.method public addFieldBinding(Lbutterknife/internal/FieldViewBinding;)V
    .locals 1
    .param p1, "fieldBinding"    # Lbutterknife/internal/FieldViewBinding;

    .prologue
    .line 57
    iget-object v0, p0, Lbutterknife/internal/ViewBindings;->fieldBindings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public addMethodBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;Lbutterknife/internal/MethodViewBinding;)V
    .locals 3
    .param p1, "listener"    # Lbutterknife/internal/ListenerClass;
    .param p2, "method"    # Lbutterknife/internal/ListenerMethod;
    .param p3, "binding"    # Lbutterknife/internal/MethodViewBinding;

    .prologue
    .line 41
    iget-object v2, p0, Lbutterknife/internal/ViewBindings;->methodBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 42
    .local v0, "methods":Ljava/util/Map;, "Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;"
    const/4 v1, 0x0

    .line 43
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    if-nez v0, :cond_1

    .line 44
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "methods":Ljava/util/Map;, "Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 45
    .restart local v0    # "methods":Ljava/util/Map;, "Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;"
    iget-object v2, p0, Lbutterknife/internal/ViewBindings;->methodBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_0
    if-nez v1, :cond_0

    .line 50
    new-instance v1, Ljava/util/LinkedHashSet;

    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 51
    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    return-void

    .line 47
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    check-cast v1, Ljava/util/Set;

    .restart local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    goto :goto_0
.end method

.method public getFieldBindings()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lbutterknife/internal/FieldViewBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lbutterknife/internal/ViewBindings;->fieldBindings:Ljava/util/Set;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lbutterknife/internal/ViewBindings;->id:I

    return v0
.end method

.method public getMethodBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lbutterknife/internal/ListenerClass;",
            "Ljava/util/Map",
            "<",
            "Lbutterknife/internal/ListenerMethod;",
            "Ljava/util/Set",
            "<",
            "Lbutterknife/internal/MethodViewBinding;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lbutterknife/internal/ViewBindings;->methodBindings:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getRequiredBindings()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbutterknife/internal/ViewBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v3, "requiredViewBindings":Ljava/util/List;, "Ljava/util/List<Lbutterknife/internal/ViewBinding;>;"
    iget-object v5, p0, Lbutterknife/internal/ViewBindings;->fieldBindings:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbutterknife/internal/FieldViewBinding;

    .line 63
    .local v1, "fieldBinding":Lbutterknife/internal/FieldViewBinding;
    invoke-virtual {v1}, Lbutterknife/internal/FieldViewBinding;->isRequired()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v1    # "fieldBinding":Lbutterknife/internal/FieldViewBinding;
    :cond_1
    iget-object v5, p0, Lbutterknife/internal/ViewBindings;->methodBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 68
    .local v2, "methodBinding":Ljava/util/Map;, "Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 69
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbutterknife/internal/MethodViewBinding;

    .line 70
    .local v0, "binding":Lbutterknife/internal/MethodViewBinding;
    invoke-virtual {v0}, Lbutterknife/internal/MethodViewBinding;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 71
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 76
    .end local v0    # "binding":Lbutterknife/internal/MethodViewBinding;
    .end local v2    # "methodBinding":Ljava/util/Map;, "Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;"
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;"
    :cond_5
    return-object v3
.end method

.method public hasMethodBinding(Lbutterknife/internal/ListenerClass;Lbutterknife/internal/ListenerMethod;)Z
    .locals 2
    .param p1, "listener"    # Lbutterknife/internal/ListenerClass;
    .param p2, "method"    # Lbutterknife/internal/ListenerMethod;

    .prologue
    .line 35
    iget-object v1, p0, Lbutterknife/internal/ViewBindings;->methodBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 36
    .local v0, "methods":Ljava/util/Map;, "Ljava/util/Map<Lbutterknife/internal/ListenerMethod;Ljava/util/Set<Lbutterknife/internal/MethodViewBinding;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
