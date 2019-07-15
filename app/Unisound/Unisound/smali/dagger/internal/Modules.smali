.class public final Ldagger/internal/Modules;
.super Ljava/lang/Object;
.source "Modules.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static collectIncludedModulesRecursively(Ldagger/internal/Loader;Ldagger/internal/ModuleAdapter;Ljava/util/Map;)V
    .locals 6
    .param p0, "plugin"    # Ldagger/internal/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Loader;",
            "Ldagger/internal/ModuleAdapter",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ldagger/internal/ModuleAdapter",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    .local p2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ldagger/internal/ModuleAdapter<*>;>;"
    iget-object v0, p1, Ldagger/internal/ModuleAdapter;->includes:[Ljava/lang/Class;

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 75
    .local v2, "include":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    invoke-virtual {p0, v2}, Ldagger/internal/Loader;->getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;

    move-result-object v3

    .line 77
    .local v3, "includedModuleAdapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-static {p0, v3, p2}, Ldagger/internal/Modules;->collectIncludedModulesRecursively(Ldagger/internal/Loader;Ldagger/internal/ModuleAdapter;Ljava/util/Map;)V

    .line 74
    .end local v3    # "includedModuleAdapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "include":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    return-void
.end method

.method public static loadModules(Ldagger/internal/Loader;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 8
    .param p0, "loader"    # Ldagger/internal/Loader;
    .param p1, "seedModulesOrClasses"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Loader;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ldagger/internal/ModuleAdapter",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v5, Ljava/util/LinkedHashMap;

    array-length v7, p1

    invoke-direct {v5, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 38
    .local v5, "seedAdapters":Ljava/util/Map;, "Ljava/util/Map<Ldagger/internal/ModuleAdapter<*>;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_1

    .line 39
    aget-object v7, p1, v2

    instance-of v7, v7, Ljava/lang/Class;

    if-eqz v7, :cond_0

    .line 40
    aget-object v7, p1, v2

    check-cast v7, Ljava/lang/Class;

    invoke-virtual {p0, v7}, Ldagger/internal/Loader;->getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;

    move-result-object v0

    .line 41
    .local v0, "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    invoke-virtual {v0}, Ldagger/internal/ModuleAdapter;->newModule()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    :cond_0
    aget-object v7, p1, v2

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p0, v7}, Ldagger/internal/Loader;->getModuleAdapter(Ljava/lang/Class;)Ldagger/internal/ModuleAdapter;

    move-result-object v0

    .line 44
    .restart local v0    # "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    aget-object v7, p1, v2

    invoke-interface {v5, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 50
    .end local v0    # "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    :cond_1
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 54
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ldagger/internal/ModuleAdapter<*>;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 56
    .local v6, "transitiveInclusions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ldagger/internal/ModuleAdapter<*>;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/internal/ModuleAdapter;

    .line 57
    .restart local v0    # "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    invoke-static {p0, v0, v6}, Ldagger/internal/Modules;->collectIncludedModulesRecursively(Ldagger/internal/Loader;Ldagger/internal/ModuleAdapter;Ljava/util/Map;)V

    goto :goto_2

    .line 60
    .end local v0    # "adapter":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    :cond_2
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldagger/internal/ModuleAdapter;

    .line 61
    .local v1, "dependency":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 62
    invoke-virtual {v1}, Ldagger/internal/ModuleAdapter;->newModule()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 65
    .end local v1    # "dependency":Ldagger/internal/ModuleAdapter;, "Ldagger/internal/ModuleAdapter<*>;"
    :cond_4
    return-object v4
.end method
