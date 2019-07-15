.class public final Ldagger/internal/SetBinding;
.super Ldagger/internal/Binding;
.source "SetBinding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/Binding",
        "<",
        "Ljava/util/Set",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final contributors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final parent:Ldagger/internal/SetBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/SetBinding",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/internal/SetBinding;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/SetBinding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    .local p1, "original":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    iget-object v0, p1, Ldagger/internal/SetBinding;->provideKey:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Ldagger/internal/SetBinding;->requiredBy:Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 82
    iput-object p1, p0, Ldagger/internal/SetBinding;->parent:Ldagger/internal/SetBinding;

    .line 83
    invoke-virtual {p1}, Ldagger/internal/SetBinding;->library()Z

    move-result v0

    invoke-virtual {p0, v0}, Ldagger/internal/SetBinding;->setLibrary(Z)V

    .line 84
    invoke-virtual {p1}, Ldagger/internal/SetBinding;->dependedOn()Z

    move-result v0

    invoke-virtual {p0, v0}, Ldagger/internal/SetBinding;->setDependedOn(Z)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0, p2}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 72
    iput-object v1, p0, Ldagger/internal/SetBinding;->parent:Ldagger/internal/SetBinding;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    .line 74
    return-void
.end method

.method public static add(Ldagger/internal/BindingsGroup;Ljava/lang/String;Ldagger/internal/Binding;)V
    .locals 2
    .param p0, "bindings"    # Ldagger/internal/BindingsGroup;
    .param p1, "setKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/BindingsGroup;",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-static {p0, p1, p2}, Ldagger/internal/SetBinding;->prepareSetBinding(Ldagger/internal/BindingsGroup;Ljava/lang/String;Ldagger/internal/Binding;)Ldagger/internal/SetBinding;

    move-result-object v0

    iget-object v0, v0, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    invoke-static {p2}, Ldagger/internal/Linker;->scope(Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method private static prepareSetBinding(Ldagger/internal/BindingsGroup;Ljava/lang/String;Ldagger/internal/Binding;)Ldagger/internal/SetBinding;
    .locals 5
    .param p0, "bindings"    # Ldagger/internal/BindingsGroup;
    .param p1, "setKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/BindingsGroup;",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;)",
            "Ldagger/internal/SetBinding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {p0, p1}, Ldagger/internal/BindingsGroup;->get(Ljava/lang/String;)Ldagger/internal/Binding;

    move-result-object v0

    .line 41
    .local v0, "previous":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    instance-of v2, v0, Ldagger/internal/SetBinding;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 42
    check-cast v1, Ldagger/internal/SetBinding;

    .line 43
    .local v1, "setBinding":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    invoke-virtual {v1}, Ldagger/internal/SetBinding;->library()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ldagger/internal/Binding;->library()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ldagger/internal/SetBinding;->setLibrary(Z)V

    move-object v2, v1

    .line 51
    :goto_1
    return-object v2

    .line 43
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 45
    .end local v1    # "setBinding":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    :cond_1
    if-eqz v0, :cond_2

    .line 46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duplicate:\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    :cond_2
    new-instance v1, Ldagger/internal/SetBinding;

    iget-object v2, p2, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, Ldagger/internal/SetBinding;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .restart local v1    # "setBinding":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    invoke-virtual {p2}, Ldagger/internal/Binding;->library()Z

    move-result v2

    invoke-virtual {v1, v2}, Ldagger/internal/SetBinding;->setLibrary(Z)V

    .line 50
    invoke-virtual {p0, p1, v1}, Ldagger/internal/BindingsGroup;->contributeSetBinding(Ljava/lang/String;Ldagger/internal/SetBinding;)Ldagger/internal/Binding;

    .line 51
    invoke-virtual {p0, p1}, Ldagger/internal/BindingsGroup;->get(Ljava/lang/String;)Ldagger/internal/Binding;

    move-result-object v2

    check-cast v2, Ldagger/internal/SetBinding;

    goto :goto_1
.end method


# virtual methods
.method public attach(Ldagger/internal/Linker;)V
    .locals 3
    .param p1, "linker"    # Ldagger/internal/Linker;

    .prologue
    .line 89
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    iget-object v2, p0, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 90
    .local v0, "contributor":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v0, p1}, Ldagger/internal/Binding;->attach(Ldagger/internal/Linker;)V

    goto :goto_0

    .line 92
    .end local v0    # "contributor":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    invoke-virtual {p0}, Ldagger/internal/SetBinding;->get()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<TT;>;"
    move-object v4, p0

    .local v4, "setBinding":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    :goto_0
    if-eqz v4, :cond_2

    .line 106
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v6, v4, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v2, v5, :cond_1

    .line 107
    iget-object v6, v4, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/internal/Binding;

    .line 108
    .local v1, "contributor":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v1}, Ldagger/internal/Binding;->get()Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "contribution":Ljava/lang/Object;
    iget-object v6, v1, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    iget-object v7, p0, Ldagger/internal/SetBinding;->provideKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 110
    check-cast v0, Ljava/util/Set;

    .end local v0    # "contribution":Ljava/lang/Object;
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .restart local v0    # "contribution":Ljava/lang/Object;
    :cond_0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 105
    .end local v0    # "contribution":Ljava/lang/Object;
    .end local v1    # "contributor":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_1
    iget-object v4, v4, Ldagger/internal/SetBinding;->parent:Ldagger/internal/SetBinding;

    goto :goto_0

    .line 116
    .end local v2    # "i":I
    .end local v5    # "size":I
    :cond_2
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    return-object v6
.end method

.method public getDependencies(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;",
            "Ljava/util/Set",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    .local p1, "getBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    .local p2, "injectMembersBindings":Ljava/util/Set;, "Ljava/util/Set<Ldagger/internal/Binding<*>;>;"
    move-object v0, p0

    .local v0, "binding":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, v0, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 121
    iget-object v0, v0, Ldagger/internal/SetBinding;->parent:Ldagger/internal/SetBinding;

    goto :goto_0

    .line 124
    :cond_0
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    check-cast p1, Ljava/util/Set;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ldagger/internal/SetBinding;->injectMembers(Ljava/util/Set;)V

    return-void
.end method

.method public injectMembers(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    .local p1, "t":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot inject members on a contributed Set<T>."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 3

    .prologue
    .line 95
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    const/4 v1, 0x0

    .line 96
    .local v1, "size":I
    move-object v0, p0

    .local v0, "binding":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 97
    iget-object v2, v0, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 96
    iget-object v0, v0, Ldagger/internal/SetBinding;->parent:Ldagger/internal/SetBinding;

    goto :goto_0

    .line 99
    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 131
    .local p0, "this":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    const/4 v1, 0x1

    .line 132
    .local v1, "first":Z
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "SetBinding["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "builder":Ljava/lang/StringBuilder;
    move-object v3, p0

    .local v3, "setBinding":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<TT;>;"
    :goto_0
    if-eqz v3, :cond_2

    .line 134
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v5, v3, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 135
    if-nez v1, :cond_0

    .line 136
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_0
    iget-object v5, v3, Ldagger/internal/SetBinding;->contributors:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    const/4 v1, 0x0

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    :cond_1
    iget-object v3, v3, Ldagger/internal/SetBinding;->parent:Ldagger/internal/SetBinding;

    goto :goto_0

    .line 142
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_2
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
