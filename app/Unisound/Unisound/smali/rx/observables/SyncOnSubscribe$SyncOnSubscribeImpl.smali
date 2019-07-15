.class final Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;
.super Lrx/observables/SyncOnSubscribe;
.source "SyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/SyncOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncOnSubscribeImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/SyncOnSubscribe",
        "<TS;TT;>;"
    }
.end annotation


# instance fields
.field private final generator:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+TS;>;"
        }
    .end annotation
.end field

.field private final next:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;"
        }
    .end annotation
.end field

.field private final onUnsubscribe:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    .line 282
    return-void
.end method

.method private constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p2, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    .local p3, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    invoke-direct {p0}, Lrx/observables/SyncOnSubscribe;-><init>()V

    .line 275
    iput-object p1, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->generator:Lrx/functions/Func0;

    .line 276
    iput-object p2, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->next:Lrx/functions/Func2;

    .line 277
    iput-object p3, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->onUnsubscribe:Lrx/functions/Action1;

    .line 278
    return-void
.end method

.method synthetic constructor <init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;Lrx/observables/SyncOnSubscribe$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/functions/Func0;
    .param p2, "x1"    # Lrx/functions/Func2;
    .param p3, "x2"    # Lrx/functions/Action1;
    .param p4, "x3"    # Lrx/observables/SyncOnSubscribe$1;

    .prologue
    .line 269
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TS;",
            "Lrx/Observer",
            "<-TT;>;TS;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<TS;Lrx/Observer<-TT;>;TS;>;"
    const/4 v0, 0x0

    .line 289
    invoke-direct {p0, v0, p1, v0}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    .line 290
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func2;Lrx/functions/Action1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TS;",
            "Lrx/Observer",
            "<-TT;>;TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<TS;Lrx/Observer<-TT;>;TS;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)V

    .line 286
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 269
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lrx/observables/SyncOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method protected generateState()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->generator:Lrx/functions/Func0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->generator:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected next(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/Observer",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    .local p2, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->next:Lrx/functions/Func2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Func2;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onUnsubscribe(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "this":Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;, "Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->onUnsubscribe:Lrx/functions/Action1;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;->onUnsubscribe:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 306
    :cond_0
    return-void
.end method
