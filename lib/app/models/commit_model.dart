// To parse this JSON data, do
//
//     final commitModel = commitModelFromJson(jsonString);

import 'dart:convert';

CommitModel commitModelFromJson(String str) =>
    CommitModel.fromJson(json.decode(str));

String commitModelToJson(CommitModel data) => json.encode(data.toJson());

class CommitModel {
  CommitModel({
    this.sha,
    this.nodeId,
    this.commit,
    this.url,
    this.htmlUrl,
    this.commentsUrl,
    this.author,
    this.committer,
    this.parents,
  });

  final String? sha;
  final String? nodeId;
  final Commit? commit;
  final String? url;
  final String? htmlUrl;
  final String? commentsUrl;
  final CommitModelAuthor? author;
  final CommitModelAuthor? committer;
  final List<Parent>? parents;

  factory CommitModel.fromJson(Map<String, dynamic> json) => CommitModel(
        sha: json["sha"] == null ? null : json["sha"],
        nodeId: json["node_id"] == null ? null : json["node_id"],
        commit: json["commit"] == null ? null : Commit.fromJson(json["commit"]),
        url: json["url"] == null ? null : json["url"],
        htmlUrl: json["html_url"] == null ? null : json["html_url"],
        commentsUrl: json["comments_url"] == null ? null : json["comments_url"],
        author: json["author"] == null
            ? null
            : CommitModelAuthor.fromJson(json["author"]),
        committer: json["committer"] == null
            ? null
            : CommitModelAuthor.fromJson(json["committer"]),
        parents: json["parents"] == null
            ? null
            : List<Parent>.from(json["parents"].map((x) => Parent.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "sha": sha == null ? null : sha,
        "node_id": nodeId == null ? null : nodeId,
        "commit": commit == null ? null : commit!.toJson(),
        "url": url == null ? null : url,
        "html_url": htmlUrl == null ? null : htmlUrl,
        "comments_url": commentsUrl == null ? null : commentsUrl,
        "author": author == null ? null : author!.toJson(),
        "committer": committer == null ? null : committer!.toJson(),
        "parents": parents == null
            ? null
            : List<dynamic>.from(parents!.map((x) => x.toJson())),
      };
}

class CommitModelAuthor {
  CommitModelAuthor({
    this.login,
    this.id,
    this.nodeId,
    this.avatarUrl,
    this.gravatarId,
    this.url,
    this.htmlUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.starredUrl,
    this.subscriptionsUrl,
    this.organizationsUrl,
    this.reposUrl,
    this.eventsUrl,
    this.receivedEventsUrl,
    this.type,
    this.siteAdmin,
  });

  final String? login;
  final int? id;
  final String? nodeId;
  final String? avatarUrl;
  final String? gravatarId;
  final String? url;
  final String? htmlUrl;
  final String? followersUrl;
  final String? followingUrl;
  final String? gistsUrl;
  final String? starredUrl;
  final String? subscriptionsUrl;
  final String? organizationsUrl;
  final String? reposUrl;
  final String? eventsUrl;
  final String? receivedEventsUrl;
  final String? type;
  final bool? siteAdmin;

  factory CommitModelAuthor.fromJson(Map<String, dynamic> json) =>
      CommitModelAuthor(
        login: json["login"] == null ? null : json["login"],
        id: json["id"] == null ? null : json["id"],
        nodeId: json["node_id"] == null ? null : json["node_id"],
        avatarUrl: json["avatar_url"] == null ? null : json["avatar_url"],
        gravatarId: json["gravatar_id"] == null ? null : json["gravatar_id"],
        url: json["url"] == null ? null : json["url"],
        htmlUrl: json["html_url"] == null ? null : json["html_url"],
        followersUrl:
            json["followers_url"] == null ? null : json["followers_url"],
        followingUrl:
            json["following_url"] == null ? null : json["following_url"],
        gistsUrl: json["gists_url"] == null ? null : json["gists_url"],
        starredUrl: json["starred_url"] == null ? null : json["starred_url"],
        subscriptionsUrl: json["subscriptions_url"] == null
            ? null
            : json["subscriptions_url"],
        organizationsUrl: json["organizations_url"] == null
            ? null
            : json["organizations_url"],
        reposUrl: json["repos_url"] == null ? null : json["repos_url"],
        eventsUrl: json["events_url"] == null ? null : json["events_url"],
        receivedEventsUrl: json["received_events_url"] == null
            ? null
            : json["received_events_url"],
        type: json["type"] == null ? null : json["type"],
        siteAdmin: json["site_admin"] == null ? null : json["site_admin"],
      );

  Map<String, dynamic> toJson() => {
        "login": login == null ? null : login,
        "id": id == null ? null : id,
        "node_id": nodeId == null ? null : nodeId,
        "avatar_url": avatarUrl == null ? null : avatarUrl,
        "gravatar_id": gravatarId == null ? null : gravatarId,
        "url": url == null ? null : url,
        "html_url": htmlUrl == null ? null : htmlUrl,
        "followers_url": followersUrl == null ? null : followersUrl,
        "following_url": followingUrl == null ? null : followingUrl,
        "gists_url": gistsUrl == null ? null : gistsUrl,
        "starred_url": starredUrl == null ? null : starredUrl,
        "subscriptions_url": subscriptionsUrl == null ? null : subscriptionsUrl,
        "organizations_url": organizationsUrl == null ? null : organizationsUrl,
        "repos_url": reposUrl == null ? null : reposUrl,
        "events_url": eventsUrl == null ? null : eventsUrl,
        "received_events_url":
            receivedEventsUrl == null ? null : receivedEventsUrl,
        "type": type == null ? null : type,
        "site_admin": siteAdmin == null ? null : siteAdmin,
      };
}

class Commit {
  Commit({
    this.author,
    this.committer,
    this.message,
    this.tree,
    this.url,
    this.commentCount,
    this.verification,
  });

  final CommitAuthor? author;
  final CommitAuthor? committer;
  final String? message;
  final Tree? tree;
  final String? url;
  final int? commentCount;
  final Verification? verification;

  factory Commit.fromJson(Map<String, dynamic> json) => Commit(
        author: json["author"] == null
            ? null
            : CommitAuthor.fromJson(json["author"]),
        committer: json["committer"] == null
            ? null
            : CommitAuthor.fromJson(json["committer"]),
        message: json["message"] == null ? null : json["message"],
        tree: json["tree"] == null ? null : Tree.fromJson(json["tree"]),
        url: json["url"] == null ? null : json["url"],
        commentCount:
            json["comment_count"] == null ? null : json["comment_count"],
        verification: json["verification"] == null
            ? null
            : Verification.fromJson(json["verification"]),
      );

  Map<String, dynamic> toJson() => {
        "author": author == null ? null : author!.toJson(),
        "committer": committer == null ? null : committer!.toJson(),
        "message": message == null ? null : message,
        "tree": tree == null ? null : tree!.toJson(),
        "url": url == null ? null : url,
        "comment_count": commentCount == null ? null : commentCount,
        "verification": verification == null ? null : verification!.toJson(),
      };
}

class CommitAuthor {
  CommitAuthor({
    this.name,
    this.email,
    this.date,
  });

  final String? name;
  final String? email;
  final DateTime? date;

  factory CommitAuthor.fromJson(Map<String, dynamic> json) => CommitAuthor(
        name: json["name"] == null ? null : json["name"],
        email: json["email"] == null ? null : json["email"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "email": email == null ? null : email,
        "date": date == null ? null : date!.toIso8601String(),
      };
}

class Tree {
  Tree({
    this.sha,
    this.url,
  });

  final String? sha;
  final String? url;

  factory Tree.fromJson(Map<String, dynamic> json) => Tree(
        sha: json["sha"] == null ? null : json["sha"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "sha": sha == null ? null : sha,
        "url": url == null ? null : url,
      };
}

class Verification {
  Verification({
    this.verified,
    this.reason,
    this.signature,
    this.payload,
  });

  final bool? verified;
  final String? reason;
  final dynamic signature;
  final dynamic payload;

  factory Verification.fromJson(Map<String, dynamic> json) => Verification(
        verified: json["verified"] == null ? null : json["verified"],
        reason: json["reason"] == null ? null : json["reason"],
        signature: json["signature"],
        payload: json["payload"],
      );

  Map<String, dynamic> toJson() => {
        "verified": verified == null ? null : verified,
        "reason": reason == null ? null : reason,
        "signature": signature,
        "payload": payload,
      };
}

class Parent {
  Parent({
    this.sha,
    this.url,
    this.htmlUrl,
  });

  final String? sha;
  final String? url;
  final String? htmlUrl;

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
        sha: json["sha"] == null ? null : json["sha"],
        url: json["url"] == null ? null : json["url"],
        htmlUrl: json["html_url"] == null ? null : json["html_url"],
      );

  Map<String, dynamic> toJson() => {
        "sha": sha == null ? null : sha,
        "url": url == null ? null : url,
        "html_url": htmlUrl == null ? null : htmlUrl,
      };
}
