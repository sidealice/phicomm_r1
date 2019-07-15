.class public Lrx/plugins/RxJavaPlugins;
.super Ljava/lang/Object;
.source "RxJavaPlugins.java"


# static fields
.field static final DEFAULT_ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

.field private static final INSTANCE:Lrx/plugins/RxJavaPlugins;


# instance fields
.field private final errorHandler:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/plugins/RxJavaErrorHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/plugins/RxJavaObservableExecutionHook;",
            ">;"
        }
    .end annotation
.end field

.field private final schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/plugins/RxJavaSchedulersHook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lrx/plugins/RxJavaPlugins;

    invoke-direct {v0}, Lrx/plugins/RxJavaPlugins;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    .line 74
    new-instance v0, Lrx/plugins/RxJavaPlugins$1;

    invoke-direct {v0}, Lrx/plugins/RxJavaPlugins$1;-><init>()V

    sput-object v0, Lrx/plugins/RxJavaPlugins;->DEFAULT_ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    .line 66
    return-void
.end method

.method public static getInstance()Lrx/plugins/RxJavaPlugins;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    return-object v0
.end method

.method static getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;
    .locals 18
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Properties;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, "pluginClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "classSimpleName":Ljava/lang/String;
    const-string v13, "rxjava.plugin."

    .line 170
    .local v13, "pluginPrefix":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rxjava.plugin."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".implementation"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "defaultKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, "implementingClass":Ljava/lang/String;
    if-nez v10, :cond_1

    .line 174
    const-string v2, ".class"

    .line 175
    .local v2, "classSuffix":Ljava/lang/String;
    const-string v9, ".impl"

    .line 177
    .local v9, "implSuffix":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 178
    .local v6, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 179
    .local v12, "key":Ljava/lang/String;
    const-string v15, "rxjava.plugin."

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, ".class"

    invoke-virtual {v12, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 180
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 182
    .local v14, "value":Ljava/lang/String;
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 183
    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    const-string v17, ".class"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const-string v16, "rxjava.plugin."

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 185
    .local v11, "index":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "rxjava.plugin."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".impl"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 187
    .local v8, "implKey":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 189
    if-nez v10, :cond_1

    .line 190
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Implementing class declaration for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " missing: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 199
    .end local v2    # "classSuffix":Ljava/lang/String;
    .end local v6    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "implKey":Ljava/lang/String;
    .end local v9    # "implSuffix":Ljava/lang/String;
    .end local v11    # "index":Ljava/lang/String;
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :cond_1
    if-eqz v10, :cond_2

    .line 201
    :try_start_0
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 203
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v15

    .line 216
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v15

    .line 205
    :catch_0
    move-exception v5

    .line 206
    .local v5, "e":Ljava/lang/ClassCastException;
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " implementation is not an instance of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 207
    .end local v5    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v5

    .line 208
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " implementation class not found: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 209
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v5

    .line 210
    .local v5, "e":Ljava/lang/InstantiationException;
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " implementation not able to be instantiated: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 211
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v5

    .line 212
    .local v5, "e":Ljava/lang/IllegalAccessException;
    new-instance v15, Ljava/lang/RuntimeException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " implementation not able to be accessed: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    .line 216
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getErrorHandler()Lrx/plugins/RxJavaErrorHandler;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    const-class v1, Lrx/plugins/RxJavaErrorHandler;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-static {v1, v2}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    .local v0, "impl":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 91
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/plugins/RxJavaPlugins;->DEFAULT_ERROR_HANDLER:Lrx/plugins/RxJavaErrorHandler;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .end local v0    # "impl":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/plugins/RxJavaErrorHandler;

    return-object v1

    .line 95
    .restart local v0    # "impl":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaErrorHandler;

    .end local v0    # "impl":Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 130
    const-class v1, Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-static {v1, v2}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    .local v0, "impl":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 133
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lrx/plugins/RxJavaObservableExecutionHookDefault;->getInstance()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 140
    .end local v0    # "impl":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/plugins/RxJavaObservableExecutionHook;

    return-object v1

    .line 137
    .restart local v0    # "impl":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaObservableExecutionHook;

    .end local v0    # "impl":Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSchedulersHook()Lrx/plugins/RxJavaSchedulersHook;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 232
    const-class v1, Lrx/plugins/RxJavaSchedulersHook;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-static {v1, v2}, Lrx/plugins/RxJavaPlugins;->getPluginImplementationViaProperty(Ljava/lang/Class;Ljava/util/Properties;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, "impl":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 235
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lrx/plugins/RxJavaSchedulersHook;->getDefaultInstance()Lrx/plugins/RxJavaSchedulersHook;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .end local v0    # "impl":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/plugins/RxJavaSchedulersHook;

    return-object v1

    .line 239
    .restart local v0    # "impl":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    check-cast v0, Lrx/plugins/RxJavaSchedulersHook;

    .end local v0    # "impl":Ljava/lang/Object;
    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerErrorHandler(Lrx/plugins/RxJavaErrorHandler;)V
    .locals 3
    .param p1, "impl"    # Lrx/plugins/RxJavaErrorHandler;

    .prologue
    .line 112
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another strategy was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    return-void
.end method

.method public registerObservableExecutionHook(Lrx/plugins/RxJavaObservableExecutionHook;)V
    .locals 3
    .param p1, "impl"    # Lrx/plugins/RxJavaObservableExecutionHook;

    .prologue
    .line 154
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another strategy was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    return-void
.end method

.method public registerSchedulersHook(Lrx/plugins/RxJavaSchedulersHook;)V
    .locals 3
    .param p1, "impl"    # Lrx/plugins/RxJavaSchedulersHook;

    .prologue
    .line 256
    iget-object v0, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another strategy was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    return-void
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    iget-object v0, v0, Lrx/plugins/RxJavaPlugins;->errorHandler:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    iget-object v0, v0, Lrx/plugins/RxJavaPlugins;->observableExecutionHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71
    sget-object v0, Lrx/plugins/RxJavaPlugins;->INSTANCE:Lrx/plugins/RxJavaPlugins;

    iget-object v0, v0, Lrx/plugins/RxJavaPlugins;->schedulersHook:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    return-void
.end method
