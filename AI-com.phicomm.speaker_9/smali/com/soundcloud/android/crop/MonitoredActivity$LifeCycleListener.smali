.class public interface abstract Lcom/soundcloud/android/crop/MonitoredActivity$LifeCycleListener;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/soundcloud/android/crop/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LifeCycleListener"
.end annotation


# virtual methods
.method public abstract onActivityCreated(Lcom/soundcloud/android/crop/MonitoredActivity;)V
.end method

.method public abstract onActivityDestroyed(Lcom/soundcloud/android/crop/MonitoredActivity;)V
.end method

.method public abstract onActivityStarted(Lcom/soundcloud/android/crop/MonitoredActivity;)V
.end method

.method public abstract onActivityStopped(Lcom/soundcloud/android/crop/MonitoredActivity;)V
.end method
