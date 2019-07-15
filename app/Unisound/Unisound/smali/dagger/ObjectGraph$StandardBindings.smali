.class final Ldagger/ObjectGraph$StandardBindings;
.super Ldagger/internal/BindingsGroup;
.source "ObjectGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/ObjectGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StandardBindings"
.end annotation


# instance fields
.field private final setBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldagger/internal/SetBinding",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ldagger/internal/BindingsGroup;-><init>()V

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    .line 327
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldagger/internal/SetBinding",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "baseSetBindings":Ljava/util/List;, "Ljava/util/List<Ldagger/internal/SetBinding<*>;>;"
    invoke-direct {p0}, Ldagger/internal/BindingsGroup;-><init>()V

    .line 330
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    .line 331
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldagger/internal/SetBinding;

    .line 333
    .local v2, "sb":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    new-instance v0, Ldagger/internal/SetBinding;

    invoke-direct {v0, v2}, Ldagger/internal/SetBinding;-><init>(Ldagger/internal/SetBinding;)V

    .line 334
    .local v0, "child":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    iget-object v3, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v3, v0, Ldagger/internal/SetBinding;->provideKey:Ljava/lang/String;

    invoke-virtual {p0, v3, v0}, Ldagger/ObjectGraph$StandardBindings;->put(Ljava/lang/String;Ldagger/internal/Binding;)Ldagger/internal/Binding;

    goto :goto_0

    .line 337
    .end local v0    # "child":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    .end local v2    # "sb":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    :cond_0
    return-void
.end method

.method static synthetic access$100(Ldagger/ObjectGraph$StandardBindings;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldagger/ObjectGraph$StandardBindings;

    .prologue
    .line 322
    iget-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public contributeSetBinding(Ljava/lang/String;Ldagger/internal/SetBinding;)Ldagger/internal/Binding;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ldagger/internal/SetBinding",
            "<*>;)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 340
    .local p2, "value":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    iget-object v0, p0, Ldagger/ObjectGraph$StandardBindings;->setBindings:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-super {p0, p1, p2}, Ldagger/internal/BindingsGroup;->put(Ljava/lang/String;Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object v0

    return-object v0
.end method
