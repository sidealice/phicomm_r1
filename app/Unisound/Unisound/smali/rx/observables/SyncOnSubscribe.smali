.class public abstract Lrx/observables/SyncOnSubscribe;
.super Ljava/lang/Object;
.source "SyncOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/SyncOnSubscribe$SubscriptionProducer;,
        Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method

.method public static createSingleState(Lrx/functions/Func0;Lrx/functions/Action2;)Lrx/Observable$OnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Action2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 122
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Action2;, "Lrx/functions/Action2<-TS;-Lrx/Observer<-TT;>;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$1;

    invoke-direct {v0, p1}, Lrx/observables/SyncOnSubscribe$1;-><init>(Lrx/functions/Action2;)V

    .line 129
    .local v0, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<TS;-Lrx/Observer<-TT;>;TS;>;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v1, p0, v0}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    return-object v1
.end method

.method public static createSingleState(Lrx/functions/Func0;Lrx/functions/Action2;Lrx/functions/Action1;)Lrx/Observable$OnSubscribe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Action2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 152
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Action2;, "Lrx/functions/Action2<-TS;-Lrx/Observer<-TT;>;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$2;

    invoke-direct {v0, p1}, Lrx/observables/SyncOnSubscribe$2;-><init>(Lrx/functions/Action2;)V

    .line 159
    .local v0, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<TS;Lrx/Observer<-TT;>;TS;>;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, p2, v2}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;Lrx/observables/SyncOnSubscribe$1;)V

    return-object v1
.end method

.method public static createStateful(Lrx/functions/Func0;Lrx/functions/Func2;)Lrx/Observable$OnSubscribe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 198
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v0, p0, p1}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    return-object v0
.end method

.method public static createStateful(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;)Lrx/Observable$OnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+TS;>;",
            "Lrx/functions/Func2",
            "<-TS;-",
            "Lrx/Observer",
            "<-TT;>;+TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 180
    .local p0, "generator":Lrx/functions/Func0;, "Lrx/functions/Func0<+TS;>;"
    .local p1, "next":Lrx/functions/Func2;, "Lrx/functions/Func2<-TS;-Lrx/Observer<-TT;>;+TS;>;"
    .local p2, "onUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;Lrx/functions/Action1;Lrx/observables/SyncOnSubscribe$1;)V

    return-object v0
.end method

.method public static createStateless(Lrx/functions/Action1;)Lrx/Observable$OnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Observer",
            "<-TT;>;>;)",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 216
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Observer<-TT;>;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$3;

    invoke-direct {v0, p0}, Lrx/observables/SyncOnSubscribe$3;-><init>(Lrx/functions/Action1;)V

    .line 223
    .local v0, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Void;Lrx/Observer<-TT;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v1, v0}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func2;)V

    return-object v1
.end method

.method public static createStateless(Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Observable$OnSubscribe;
    .locals 3
    .param p1, "onUnsubscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<-",
            "Lrx/Observer",
            "<-TT;>;>;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 244
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<-Lrx/Observer<-TT;>;>;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$4;

    invoke-direct {v0, p0}, Lrx/observables/SyncOnSubscribe$4;-><init>(Lrx/functions/Action1;)V

    .line 251
    .local v0, "nextFunc":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Void;Lrx/Observer<-TT;>;Ljava/lang/Void;>;"
    new-instance v1, Lrx/observables/SyncOnSubscribe$5;

    invoke-direct {v1, p1}, Lrx/observables/SyncOnSubscribe$5;-><init>(Lrx/functions/Action0;)V

    .line 256
    .local v1, "wrappedOnUnsubscribe":Lrx/functions/Action1;, "Lrx/functions/Action1<-Ljava/lang/Void;>;"
    new-instance v2, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;

    invoke-direct {v2, v0, v1}, Lrx/observables/SyncOnSubscribe$SyncOnSubscribeImpl;-><init>(Lrx/functions/Func2;Lrx/functions/Action1;)V

    return-object v2
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    .local p0, "this":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/SyncOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-virtual {p0}, Lrx/observables/SyncOnSubscribe;->generateState()Ljava/lang/Object;

    move-result-object v1

    .line 57
    .local v1, "state":Ljava/lang/Object;, "TS;"
    new-instance v0, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p0, v1, v2}, Lrx/observables/SyncOnSubscribe$SubscriptionProducer;-><init>(Lrx/Subscriber;Lrx/observables/SyncOnSubscribe;Ljava/lang/Object;Lrx/observables/SyncOnSubscribe$1;)V

    .line 58
    .local v0, "p":Lrx/observables/SyncOnSubscribe$SubscriptionProducer;, "Lrx/observables/SyncOnSubscribe$SubscriptionProducer<TS;TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 59
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 60
    return-void
.end method

.method protected abstract generateState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract next(Ljava/lang/Object;Lrx/Observer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lrx/Observer",
            "<-TT;>;)TS;"
        }
    .end annotation
.end method

.method protected onUnsubscribe(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/observables/SyncOnSubscribe;, "Lrx/observables/SyncOnSubscribe<TS;TT;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method
