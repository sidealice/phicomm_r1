.class public final Lbutterknife/ButterKnife;
.super Ljava/lang/Object;
.source "ButterKnife.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbutterknife/ButterKnife$Setter;,
        Lbutterknife/ButterKnife$Action;,
        Lbutterknife/ButterKnife$ViewBinder;,
        Lbutterknife/ButterKnife$Finder;
    }
.end annotation


# static fields
.field static final BINDERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lbutterknife/ButterKnife$ViewBinder",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field static final NOP_VIEW_BINDER:Lbutterknife/ButterKnife$ViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbutterknife/ButterKnife$ViewBinder",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ButterKnife"

.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lbutterknife/ButterKnife;->debug:Z

    .line 218
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lbutterknife/ButterKnife;->BINDERS:Ljava/util/Map;

    .line 220
    new-instance v0, Lbutterknife/ButterKnife$1;

    invoke-direct {v0}, Lbutterknife/ButterKnife$1;-><init>()V

    sput-object v0, Lbutterknife/ButterKnife;->NOP_VIEW_BINDER:Lbutterknife/ButterKnife$ViewBinder;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static apply(Ljava/util/List;Landroid/util/Property;Ljava/lang/Object;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Landroid/util/Property",
            "<-TT;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 372
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "setter":Landroid/util/Property;, "Landroid/util/Property<-TT;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 373
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method

.method public static apply(Ljava/util/List;Lbutterknife/ButterKnife$Action;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lbutterknife/ButterKnife$Action",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "action":Lbutterknife/ButterKnife$Action;, "Lbutterknife/ButterKnife$Action<-TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 354
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {p1, v2, v1}, Lbutterknife/ButterKnife$Action;->apply(Landroid/view/View;I)V

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    :cond_0
    return-void
.end method

.method public static apply(Ljava/util/List;Lbutterknife/ButterKnife$Setter;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lbutterknife/ButterKnife$Setter",
            "<-TT;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "setter":Lbutterknife/ButterKnife$Setter;, "Lbutterknife/ButterKnife$Setter<-TT;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 361
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {p1, v2, p2, v1}, Lbutterknife/ButterKnife$Setter;->set(Landroid/view/View;Ljava/lang/Object;I)V

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method public static bind(Landroid/app/Activity;)V
    .locals 1
    .param p0, "target"    # Landroid/app/Activity;

    .prologue
    .line 237
    sget-object v0, Lbutterknife/ButterKnife$Finder;->ACTIVITY:Lbutterknife/ButterKnife$Finder;

    invoke-static {p0, p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V

    .line 238
    return-void
.end method

.method public static bind(Landroid/app/Dialog;)V
    .locals 1
    .param p0, "target"    # Landroid/app/Dialog;

    .prologue
    .line 257
    sget-object v0, Lbutterknife/ButterKnife$Finder;->DIALOG:Lbutterknife/ButterKnife$Finder;

    invoke-static {p0, p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V

    .line 258
    return-void
.end method

.method public static bind(Landroid/view/View;)V
    .locals 1
    .param p0, "target"    # Landroid/view/View;

    .prologue
    .line 247
    sget-object v0, Lbutterknife/ButterKnife$Finder;->VIEW:Lbutterknife/ButterKnife$Finder;

    invoke-static {p0, p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V

    .line 248
    return-void
.end method

.method public static bind(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "source"    # Landroid/app/Activity;

    .prologue
    .line 268
    sget-object v0, Lbutterknife/ButterKnife$Finder;->ACTIVITY:Lbutterknife/ButterKnife$Finder;

    invoke-static {p0, p1, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V

    .line 269
    return-void
.end method

.method public static bind(Ljava/lang/Object;Landroid/app/Dialog;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "source"    # Landroid/app/Dialog;

    .prologue
    .line 290
    sget-object v0, Lbutterknife/ButterKnife$Finder;->DIALOG:Lbutterknife/ButterKnife$Finder;

    invoke-static {p0, p1, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V

    .line 291
    return-void
.end method

.method public static bind(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 279
    sget-object v0, Lbutterknife/ButterKnife$Finder;->VIEW:Lbutterknife/ButterKnife$Finder;

    invoke-static {p0, p1, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V

    .line 280
    return-void
.end method

.method static bind(Ljava/lang/Object;Ljava/lang/Object;Lbutterknife/ButterKnife$Finder;)V
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "finder"    # Lbutterknife/ButterKnife$Finder;

    .prologue
    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 316
    .local v1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-boolean v3, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "ButterKnife"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking up view binder for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    invoke-static {v1}, Lbutterknife/ButterKnife;->findViewBinderForClass(Ljava/lang/Class;)Lbutterknife/ButterKnife$ViewBinder;

    move-result-object v2

    .line 318
    .local v2, "viewBinder":Lbutterknife/ButterKnife$ViewBinder;, "Lbutterknife/ButterKnife$ViewBinder<Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 319
    invoke-interface {v2, p2, p0, p1}, Lbutterknife/ButterKnife$ViewBinder;->bind(Lbutterknife/ButterKnife$Finder;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_1
    return-void

    .line 321
    .end local v2    # "viewBinder":Lbutterknife/ButterKnife$ViewBinder;, "Lbutterknife/ButterKnife$ViewBinder<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind views for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static findById(Landroid/app/Activity;I)Landroid/view/View;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Activity;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static findById(Landroid/app/Dialog;I)Landroid/view/View;
    .locals 1
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/app/Dialog;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static findById(Landroid/view/View;I)Landroid/view/View;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static findViewBinderForClass(Ljava/lang/Class;)Lbutterknife/ButterKnife$ViewBinder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lbutterknife/ButterKnife$ViewBinder",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lbutterknife/ButterKnife;->BINDERS:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbutterknife/ButterKnife$ViewBinder;

    .line 329
    .local v3, "viewBinder":Lbutterknife/ButterKnife$ViewBinder;, "Lbutterknife/ButterKnife$ViewBinder<Ljava/lang/Object;>;"
    if-eqz v3, :cond_1

    .line 330
    sget-boolean v5, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v5, :cond_0

    const-string v5, "ButterKnife"

    const-string v6, "HIT: Cached in view binder map."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v5, v3

    .line 348
    :goto_0
    return-object v5

    .line 333
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "clsName":Ljava/lang/String;
    const-string v5, "android."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "java."

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 335
    :cond_2
    sget-boolean v5, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v5, :cond_3

    const-string v5, "ButterKnife"

    const-string v6, "MISS: Reached framework class. Abandoning search."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3
    sget-object v5, Lbutterknife/ButterKnife;->NOP_VIEW_BINDER:Lbutterknife/ButterKnife$ViewBinder;

    goto :goto_0

    .line 339
    :cond_4
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$$ViewBinder"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 341
    .local v4, "viewBindingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lbutterknife/ButterKnife$ViewBinder;

    move-object v3, v0

    .line 342
    sget-boolean v5, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v5, :cond_5

    const-string v5, "ButterKnife"

    const-string v6, "HIT: Loaded view binder class."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v4    # "viewBindingClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_1
    sget-object v5, Lbutterknife/ButterKnife;->BINDERS:Ljava/util/Map;

    invoke-interface {v5, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v3

    .line 348
    goto :goto_0

    .line 343
    :catch_0
    move-exception v2

    .line 344
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v5, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v5, :cond_6

    const-string v5, "ButterKnife"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not found. Trying superclass "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lbutterknife/ButterKnife;->findViewBinderForClass(Ljava/lang/Class;)Lbutterknife/ButterKnife$ViewBinder;

    move-result-object v3

    goto :goto_1
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 227
    sput-boolean p0, Lbutterknife/ButterKnife;->debug:Z

    .line 228
    return-void
.end method

.method public static unbind(Ljava/lang/Object;)V
    .locals 6
    .param p0, "target"    # Ljava/lang/Object;

    .prologue
    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 303
    .local v1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-boolean v3, Lbutterknife/ButterKnife;->debug:Z

    if-eqz v3, :cond_0

    const-string v3, "ButterKnife"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking up view binder for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    invoke-static {v1}, Lbutterknife/ButterKnife;->findViewBinderForClass(Ljava/lang/Class;)Lbutterknife/ButterKnife$ViewBinder;

    move-result-object v2

    .line 305
    .local v2, "viewBinder":Lbutterknife/ButterKnife$ViewBinder;, "Lbutterknife/ButterKnife$ViewBinder<Ljava/lang/Object;>;"
    if-eqz v2, :cond_1

    .line 306
    invoke-interface {v2, p0}, Lbutterknife/ButterKnife$ViewBinder;->unbind(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    :cond_1
    return-void

    .line 308
    .end local v2    # "viewBinder":Lbutterknife/ButterKnife$ViewBinder;, "Lbutterknife/ButterKnife$ViewBinder<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to unbind views for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
