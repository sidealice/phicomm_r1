.class public final Ldagger/internal/Linker;
.super Ljava/lang/Object;
.source "Linker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/internal/Linker$1;,
        Ldagger/internal/Linker$DeferredBinding;,
        Ldagger/internal/Linker$ErrorHandler;,
        Ldagger/internal/Linker$SingletonBinding;
    }
.end annotation


# static fields
.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private attachSuccess:Z

.field private final base:Ldagger/internal/Linker;

.field private final bindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final errorHandler:Ldagger/internal/Linker$ErrorHandler;

.field private final errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile linkedBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final plugin:Ldagger/internal/Loader;

.field private final toLink:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldagger/internal/Linker;Ldagger/internal/Loader;Ldagger/internal/Linker$ErrorHandler;)V
    .locals 2
    .param p1, "base"    # Ldagger/internal/Linker;
    .param p2, "plugin"    # Ldagger/internal/Loader;
    .param p3, "errorHandler"    # Ldagger/internal/Linker$ErrorHandler;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ldagger/internal/ArrayQueue;

    invoke-direct {v0}, Ldagger/internal/ArrayQueue;-><init>()V

    iput-object v0, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldagger/internal/Linker;->attachSuccess:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    .line 65
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "plugin"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "errorHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput-object p1, p0, Ldagger/internal/Linker;->base:Ldagger/internal/Linker;

    .line 69
    iput-object p2, p0, Ldagger/internal/Linker;->plugin:Ldagger/internal/Loader;

    .line 70
    iput-object p3, p0, Ldagger/internal/Linker;->errorHandler:Ldagger/internal/Linker$ErrorHandler;

    .line 71
    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Ldagger/internal/Linker;->UNINITIALIZED:Ljava/lang/Object;

    return-object v0
.end method

.method private addError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method private assertLockHeld()V
    .locals 1

    .prologue
    .line 194
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 195
    :cond_0
    return-void
.end method

.method private createBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mustHaveInjections"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "Z)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Ldagger/internal/Keys;->getBuiltInBindingsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "builtInBindingsKey":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 212
    new-instance v0, Ldagger/internal/BuiltInBinding;

    invoke-direct {v0, p1, p2, p3, v1}, Ldagger/internal/BuiltInBinding;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 214
    :cond_1
    invoke-static {p1}, Ldagger/internal/Keys;->getLazyKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "lazyKey":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 216
    new-instance v0, Ldagger/internal/LazyBinding;

    invoke-direct {v0, p1, p2, p3, v3}, Ldagger/internal/LazyBinding;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-static {p1}, Ldagger/internal/Keys;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "className":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-static {p1}, Ldagger/internal/Keys;->isAnnotated(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 222
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 224
    :cond_4
    iget-object v4, p0, Ldagger/internal/Linker;->plugin:Ldagger/internal/Loader;

    invoke-virtual {v4, p1, v2, p3, p4}, Ldagger/internal/Loader;->getAtInjectBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;

    move-result-object v0

    .line 226
    .local v0, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-nez v0, :cond_0

    .line 229
    new-instance v4, Ldagger/internal/Binding$InvalidBindingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not be bound with key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ldagger/internal/Binding$InvalidBindingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method private putBinding(Ldagger/internal/Binding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Binding",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 305
    .local p1, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<TT;>;"
    iget-object v0, p1, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    iget-object v1, p1, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ldagger/internal/Linker;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    :cond_0
    iget-object v0, p1, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    iget-object v1, p1, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, p1}, Ldagger/internal/Linker;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 311
    :cond_1
    return-void
.end method

.method private putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "replaced":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 330
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_0
    return-void
.end method

.method static scope(Ldagger/internal/Binding;)Ldagger/internal/Binding;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/Binding",
            "<TT;>;)",
            "Ldagger/internal/Binding",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 317
    .local p0, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<TT;>;"
    invoke-virtual {p0}, Ldagger/internal/Binding;->isSingleton()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Ldagger/internal/Linker$SingletonBinding;

    if-eqz v0, :cond_1

    .line 320
    .end local p0    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<TT;>;"
    :cond_0
    :goto_0
    return-object p0

    .restart local p0    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<TT;>;"
    :cond_1
    new-instance v0, Ldagger/internal/Linker$SingletonBinding;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldagger/internal/Linker$SingletonBinding;-><init>(Ldagger/internal/Binding;Ldagger/internal/Linker$1;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public fullyLinkedBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    return-object v0
.end method

.method public installBindings(Ldagger/internal/BindingsGroup;)V
    .locals 5
    .param p1, "toInstall"    # Ldagger/internal/BindingsGroup;

    .prologue
    .line 82
    iget-object v2, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 83
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot install further bindings after calling linkAll()."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    invoke-virtual {p1}, Ldagger/internal/BindingsGroup;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 86
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ldagger/internal/Binding<*>;>;"
    iget-object v3, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldagger/internal/Binding;

    invoke-static {v2}, Ldagger/internal/Linker;->scope(Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 88
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ldagger/internal/Binding<*>;>;"
    :cond_1
    return-void
.end method

.method public linkAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ldagger/internal/Binding",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ldagger/internal/Linker;->assertLockHeld()V

    .line 101
    iget-object v2, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    .line 111
    :goto_0
    return-object v2

    .line 104
    :cond_0
    iget-object v2, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .line 105
    .local v0, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v0}, Ldagger/internal/Binding;->isLinked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    .end local v0    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_2
    invoke-virtual {p0}, Ldagger/internal/Linker;->linkRequested()V

    .line 110
    iget-object v2, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    .line 111
    iget-object v2, p0, Ldagger/internal/Linker;->linkedBindings:Ljava/util/Map;

    goto :goto_0
.end method

.method public linkRequested()V
    .locals 10

    .prologue
    .line 130
    invoke-direct {p0}, Ldagger/internal/Linker;->assertLockHeld()V

    .line 132
    :cond_0
    :goto_0
    iget-object v7, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/Binding;

    .local v0, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-eqz v0, :cond_4

    .line 133
    instance-of v7, v0, Ldagger/internal/Linker$DeferredBinding;

    if-eqz v7, :cond_2

    move-object v1, v0

    .line 134
    check-cast v1, Ldagger/internal/Linker$DeferredBinding;

    .line 135
    .local v1, "deferred":Ldagger/internal/Linker$DeferredBinding;
    iget-object v3, v1, Ldagger/internal/Linker$DeferredBinding;->deferredKey:Ljava/lang/String;

    .line 136
    .local v3, "key":Ljava/lang/String;
    iget-boolean v4, v1, Ldagger/internal/Linker$DeferredBinding;->mustHaveInjections:Z

    .line 137
    .local v4, "mustHaveInjections":Z
    iget-object v7, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 141
    :try_start_0
    iget-object v7, v0, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    iget-object v8, v1, Ldagger/internal/Linker$DeferredBinding;->classLoader:Ljava/lang/ClassLoader;

    invoke-direct {p0, v3, v7, v8, v4}, Ldagger/internal/Linker;->createBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Z)Ldagger/internal/Binding;

    move-result-object v5

    .line 143
    .local v5, "resolvedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v0}, Ldagger/internal/Binding;->library()Z

    move-result v7

    invoke-virtual {v5, v7}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 144
    invoke-virtual {v0}, Ldagger/internal/Binding;->dependedOn()Z

    move-result v7

    invoke-virtual {v5, v7}, Ldagger/internal/Binding;->setDependedOn(Z)V

    .line 146
    iget-object v7, v5, Ldagger/internal/Binding;->provideKey:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v5, Ldagger/internal/Binding;->membersKey:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 147
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to create binding for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ldagger/internal/Binding$InvalidBindingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 153
    .end local v5    # "resolvedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ldagger/internal/Binding$InvalidBindingException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v2, Ldagger/internal/Binding$InvalidBindingException;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ldagger/internal/Binding$InvalidBindingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " required by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Ldagger/internal/Linker;->addError(Ljava/lang/String;)V

    .line 155
    iget-object v7, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    sget-object v8, Ldagger/internal/Binding;->UNRESOLVED:Ldagger/internal/Binding;

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 150
    .end local v2    # "e":Ldagger/internal/Binding$InvalidBindingException;
    .restart local v5    # "resolvedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :cond_1
    :try_start_1
    invoke-static {v5}, Ldagger/internal/Linker;->scope(Ldagger/internal/Binding;)Ldagger/internal/Binding;

    move-result-object v6

    .line 151
    .local v6, "scopedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    iget-object v7, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v7, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, v6}, Ldagger/internal/Linker;->putBinding(Ldagger/internal/Binding;)V
    :try_end_1
    .catch Ldagger/internal/Binding$InvalidBindingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 156
    .end local v5    # "resolvedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    .end local v6    # "scopedBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :catch_1
    move-exception v2

    .line 157
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " required by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Ldagger/internal/Linker;->addError(Ljava/lang/String;)V

    .line 158
    iget-object v7, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    sget-object v8, Ldagger/internal/Binding;->UNRESOLVED:Ldagger/internal/Binding;

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 159
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " required by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Ldagger/internal/Binding;->requiredBy:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Ldagger/internal/Linker;->addError(Ljava/lang/String;)V

    .line 161
    iget-object v7, p0, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    sget-object v8, Ldagger/internal/Binding;->UNRESOLVED:Ldagger/internal/Binding;

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 162
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/RuntimeException;
    throw v2

    .line 164
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 171
    .end local v1    # "deferred":Ldagger/internal/Linker$DeferredBinding;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "mustHaveInjections":Z
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Ldagger/internal/Linker;->attachSuccess:Z

    .line 172
    invoke-virtual {v0, p0}, Ldagger/internal/Binding;->attach(Ldagger/internal/Linker;)V

    .line 173
    iget-boolean v7, p0, Ldagger/internal/Linker;->attachSuccess:Z

    if-eqz v7, :cond_3

    .line 174
    invoke-virtual {v0}, Ldagger/internal/Binding;->setLinked()V

    goto/16 :goto_0

    .line 176
    :cond_3
    iget-object v7, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v7, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    :cond_4
    :try_start_2
    iget-object v7, p0, Ldagger/internal/Linker;->errorHandler:Ldagger/internal/Linker$ErrorHandler;

    iget-object v8, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v7, v8}, Ldagger/internal/Linker$ErrorHandler;->handleErrors(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    iget-object v7, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 186
    return-void

    .line 184
    :catchall_0
    move-exception v7

    iget-object v8, p0, Ldagger/internal/Linker;->errors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    throw v7
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;)Ldagger/internal/Binding;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    return-object v0
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;)Ldagger/internal/Binding;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    return-object v0
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;
    .param p3, "classLoader"    # Ljava/lang/ClassLoader;
    .param p4, "mustHaveInjections"    # Z
    .param p5, "library"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/ClassLoader;",
            "ZZ)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 269
    invoke-direct {p0}, Ldagger/internal/Linker;->assertLockHeld()V

    .line 271
    const/4 v6, 0x0

    .line 272
    .local v6, "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    move-object v7, p0

    .local v7, "linker":Ldagger/internal/Linker;
    :goto_0
    if-eqz v7, :cond_1

    .line 273
    iget-object v1, v7, Ldagger/internal/Linker;->bindings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    check-cast v6, Ldagger/internal/Binding;

    .line 274
    .restart local v6    # "binding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    if-eqz v6, :cond_0

    .line 275
    if-eq v7, p0, :cond_1

    invoke-virtual {v6}, Ldagger/internal/Binding;->isLinked()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 272
    :cond_0
    iget-object v7, v7, Ldagger/internal/Linker;->base:Ldagger/internal/Linker;

    goto :goto_0

    .line 280
    :cond_1
    if-nez v6, :cond_2

    .line 282
    new-instance v0, Ldagger/internal/Linker$DeferredBinding;

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ldagger/internal/Linker$DeferredBinding;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/Object;ZLdagger/internal/Linker$1;)V

    .line 284
    .local v0, "deferredBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    invoke-virtual {v0, p5}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 285
    invoke-virtual {v0, v8}, Ldagger/internal/Binding;->setDependedOn(Z)V

    .line 286
    iget-object v1, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Ldagger/internal/Linker;->attachSuccess:Z

    .line 297
    .end local v0    # "deferredBinding":Ldagger/internal/Binding;, "Ldagger/internal/Binding<*>;"
    :goto_1
    return-object v5

    .line 291
    :cond_2
    invoke-virtual {v6}, Ldagger/internal/Binding;->isLinked()Z

    move-result v1

    if-nez v1, :cond_3

    .line 292
    iget-object v1, p0, Ldagger/internal/Linker;->toLink:Ljava/util/Queue;

    invoke-interface {v1, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_3
    invoke-virtual {v6, p5}, Ldagger/internal/Binding;->setLibrary(Z)V

    .line 296
    invoke-virtual {v6, v8}, Ldagger/internal/Binding;->setDependedOn(Z)V

    move-object v5, v6

    .line 297
    goto :goto_1
.end method

.method public requestBinding(Ljava/lang/String;Ljava/lang/Object;ZZ)Ldagger/internal/Binding;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "requiredBy"    # Ljava/lang/Object;
    .param p3, "mustHaveInjections"    # Z
    .param p4, "library"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "ZZ)",
            "Ldagger/internal/Binding",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Ldagger/internal/Linker;->requestBinding(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;ZZ)Ldagger/internal/Binding;

    move-result-object v0

    return-object v0
.end method
