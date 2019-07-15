.class final Ldagger/ObjectGraph$OverridesBindings;
.super Ldagger/internal/BindingsGroup;
.source "ObjectGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/ObjectGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OverridesBindings"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Ldagger/internal/BindingsGroup;-><init>()V

    return-void
.end method


# virtual methods
.method public contributeSetBinding(Ljava/lang/String;Ldagger/internal/SetBinding;)Ldagger/internal/Binding;
    .locals 2
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
    .line 354
    .local p2, "value":Ldagger/internal/SetBinding;, "Ldagger/internal/SetBinding<*>;"
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Module overrides cannot contribute set bindings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
